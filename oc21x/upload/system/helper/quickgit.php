<?php
class QuickGit {
private $version;

function __construct() {
	if(function_exists('exec')) {
		exec('git describe --always',$version_mini_hash,$error);
			if($error == 0 ){
			exec('git rev-list HEAD | wc -l',$version_number);
			exec('git log -1',$line);
			exec('git rev-parse --abbrev-ref HEAD',$branch);
			$this->version['branch'] = $branch[0];
			$this->version['short'] = $branch[0].".".trim($version_number[0]).".".$version_mini_hash[0];
			$this->version['full'] = $branch[0].".".trim($version_number[0]).".$version_mini_hash[0] (".str_replace('commit ','',$line[0]).")";
			$this->version['error']= '';
			}else{
			$this->version['error']="Error: [ git is unavailable ]";
			}
	}else{
		$this->version['error']="Error: [ exec not enabled ]";
	}
}

public function output() {
	return $this->version;

}



}
