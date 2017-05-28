<?php

namespace BelPro\AvailableWebsites\Block;

class AvailableWebsites extends \Magento\Framework\View\Element\Template
{
	protected $_template = 'available-websites.phtml';

	protected $_scopeConfig;

	/**
	 * [__construct description]
	 * @param \Magento\Framework\View\Element\Template\Context                $context                 [description]
	 * @param array                                                           $data                    [description]
	 */
	public function __construct(
		\Magento\Framework\View\Element\Template\Context $context,
		array $data = []
	) {
		parent::__construct($context, $data);
		$this->_scopeConfig = $context->getScopeConfig();
	}
}
