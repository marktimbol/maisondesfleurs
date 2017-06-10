<?php
/**
 * BSS Commerce Co.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the EULA
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://bsscommerce.com/Bss-Commerce-License.txt
 *
 * =================================================================
 *                 MAGENTO EDITION USAGE NOTICE
 * =================================================================
 * This package designed for Magento COMMUNITY edition
 * BSS Commerce does not guarantee correct work of this extension
 * on any other Magento edition except Magento COMMUNITY edition.
 * BSS Commerce does not provide extension support in case of
 * incorrect edition usage.
 * =================================================================
 *
 * @category   BSS
 * @package    Bss_OrderDeliveryDate
 * @author     Extension Team
 * @copyright  Copyright (c) 2015-2016 BSS Commerce Co. ( http://bsscommerce.com )
 * @license    http://bsscommerce.com/Bss-Commerce-License.txt
 */
namespace Bss\OrderDeliveryDate\Model\Plugin\Sales\Order\Pdf;

class Invoice extends \Magento\Sales\Model\Order\Pdf\Invoice
{

  public function getPdf($invoices = [])
    {
        $this->_beforeGetPdf();
        $this->_initRenderer('invoice');

        $pdf = new \Zend_Pdf();
        $this->_setPdf($pdf);
        $style = new \Zend_Pdf_Style();
        $this->_setFontBold($style, 10);

        foreach ($invoices as $invoice) {
            if ($invoice->getStoreId()) {
                $this->_localeResolver->emulate($invoice->getStoreId());
                $this->_storeManager->setCurrentStore($invoice->getStoreId());
            }
            $page = $this->newPage();
            $order = $invoice->getOrder();
            /* Add image */
            $this->insertLogo($page, $invoice->getStore());
            /* Add address */
            $this->insertAddress($page, $invoice->getStore());
            /* Add head */
            $this->insertOrder(
                $page,
                $order,
                $this->_scopeConfig->isSetFlag(
                    self::XML_PATH_SALES_PDF_INVOICE_PUT_ORDER_ID,
                    \Magento\Store\Model\ScopeInterface::SCOPE_STORE,
                    $order->getStoreId()
                )
            );
            /* Add document text and number */
            $this->insertDocumentNumber($page, __('Invoice # ') . $invoice->getIncrementId());
            /* Add delivery date*/
            $this->insertBssDeliveryDate($page, $order);
            /* Add table */
            $this->_drawHeader($page);
            /* Add body */
            foreach ($invoice->getAllItems() as $item) {
                if ($item->getOrderItem()->getParentItem()) {
                    continue;
                }
                /* Draw item */
                $this->_drawItem($item, $page, $order);
                $page = end($pdf->pages);
            }
            /* Add totals */
            $this->insertTotals($page, $invoice);
            if ($invoice->getStoreId()) {
                $this->_localeResolver->revert();
            }
        }
        $this->_afterGetPdf();
        return $pdf;
    }

  public  function insertBssDeliveryDate(&$page, $order)
  {
    $shippingArrivalDate = $order->getShippingArrivalDate();
    if (!$shippingArrivalDate) {
      $shippingArrivalDate = __('N/A');
    }
    $shippingArrivalTimeslot = $order->getShippingArrivalTimeslot();
    if (!$shippingArrivalTimeslot) {
      $shippingArrivalTimeslot = __('N/A');
    }
    $shippingArrivalComments = $order->getShippingArrivalComments();
    if (!$shippingArrivalComments) {
      $shippingArrivalComments = __('No Comment');
    }
    $this->y -= -8;
    $page->setFillColor(new \Zend_Pdf_Color_Rgb(0.93, 0.92, 0.92));
    $page->setLineColor(new \Zend_Pdf_Color_GrayScale(0.5));
    $page->setLineWidth(0.5);
    $page->drawRectangle(25, $this->y, 570, $this->y - 20);
    $page->setFillColor(new \Zend_Pdf_Color_Rgb(1, 1, 1));
    $page->drawRectangle(25, $this->y - 20, 570, $this->y - 77);

    $page->setFillColor(new \Zend_Pdf_Color_RGB(0.1, 0.1, 0.1));
    $this->_setFontBold($page, 12);

    $currentDate = __('Shipping Arrival Date: ') . $shippingArrivalDate;
    $deliveryTimeSlot = __('Shipping Arrival Timeslot: ') . $shippingArrivalTimeslot;
    $comment = __('Shipping Arrival Comment: ') . $shippingArrivalComments;
    $page->drawText(__('Delivery Date Information'), 35, $this->y - 13, 'UTF-8');
    $this->_setFontRegular($page, 10);
    $page->drawText($currentDate, 33, $this->y - 33, 'UTF-8');
    $page->drawText($deliveryTimeSlot, 33, $this->y - 50, 'UTF-8');
    $page->drawText($comment, 33, $this->y - 67, 'UTF-8');
    $this->y -= 84;
  }
}
