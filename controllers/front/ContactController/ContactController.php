class ContactControllerCore extends FrontController {
    public function initContent() {
        parent::initContent();
        $this->setTemplate('contact.tpl');
    }
}