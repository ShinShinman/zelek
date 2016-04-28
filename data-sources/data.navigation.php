<?php
class datasourcenavigation extends NavigationDatasource
{
    public $dsParamROOTELEMENT = 'navigation';
    public $dsParamORDER = 'asc';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    
    public $dsParamFILTERS = array(
        'type' => 'page',
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }
    public function about()
    {
        return array(
            'name' => 'Navigation',
            'author' => array(
                'name' => 'Olaf Schindler',
                'website' => 'http://localhost/bronislawzelek.com',
                'email' => 'studio@orkana39.pl'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-04-28T12:45:27+00:00'
        );
    }
    public function getSource()
    {
        return 'navigation';
    }
    public function allowEditorToParse()
    {
        return true;
    }
    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);
        try{
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
            return $result;
        }
        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }
        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }
        return $result;
    }
}