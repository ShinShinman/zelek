<?php
class datasourcecollection extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'collection';
    public $dsParamORDER = 'desc';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '20';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamSORT = 'system:id';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamINCLUDEDELEMENTS = array(
        'title',
        'content: formatted'
    );
    
    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }
    public function about()
    {
        return array(
            'name' => 'Collection',
            'author' => array(
                'name' => 'Olaf Schindler',
                'website' => 'http://localhost/bronislawzelek.com',
                'email' => 'studio@orkana39.pl'),
            'version' => 'Symphony 2.6.7',
            'release-date' => '2016-04-28T12:34:39+00:00'
        );
    }
    public function getSource()
    {
        return '4';
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