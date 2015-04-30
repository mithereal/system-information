<?php
class ControllerToolSysinfo extends Controller
{
    public function index()
    {
        //=== Init
        $data  = array();
        $data += $this->load->language('tool/sysinfo');

        $this->load->model('setting/store');

        //=== Document
        $this->document->setTitle($this->language->get('ext_name'));

         $this->document->addStyle('view/stylesheet/sysinfo/css/uikit-echothemes.min.css?v=1.2.0', 'stylesheet');
         $this->document->addStyle('view/stylesheet/sysinfo/sysinfo.css?v='.$this->language->get('ext_version'), 'stylesheet');
         $this->document->addScript('view/stylesheet/sysinfo/js/uikit.min.js?v=2.8.0');

        //=== Breadcrumbs
        $data['breadcrumbs']    = array();
        $data['breadcrumbs'][]  = array(
            'text'  => '<i class="uk-icon-home uk-icon-nano"></i>',
            'href'  => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL'),
            'class' => ''
        );
        $data['breadcrumbs'][]  = array(
            'text'  => $this->language->get('ext_name'),
            'href'  => $this->url->link('tool/sysinfo', 'token=' . $this->session->data['token'], 'SSL'),
            'class' => 'active',
        );

        //=== Content
        $data['token']          = $this->session->data['token'];
        
        $data['stores']         = $this->model_setting_store->getTotalStores() + 1;
        $data['ssl']            = $this->config->get('config_secure');
        $data['seo']            = $this->config->get('config_seo_url');
        $data['maintenance']    = $this->config->get('config_maintenance');
        $data['compression']    = $this->config->get('config_compression');
        $data['fraud']          = $this->config->get('config_fraud_detection');
        $data['mail']           = $this->config->get('config_mail_protocol');
        $data['ftp']            = $this->config->get('config_ftp_status');
        $data['currency']       = $this->config->get('config_currency_auto');
        $data['error_display']  = $this->config->get('config_error_display');
        $data['error_log']      = $this->config->get('config_error_log');

        $data['db_server']      = $this->db->getServerInfo();
        $data['db_host']        = $this->db->getHostInfo();

        //=== H-MVC
        $data['header']     = $this->load->controller('common/header');
        $data['menu']       = $this->load->controller('common/column_left');
        $data['footer']     = $this->load->controller('common/footer');;

        //=== Render
        $template   = 'tool/sysinfo.tpl';
        $render     = $this->load->view($template, $data);

        $this->response->setOutput($render);
    }
}