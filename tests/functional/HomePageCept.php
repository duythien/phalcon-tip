<?php 
$I = new TestGuy($scenario);
$I->wantTo('Verify that the home page wellcome me');
$I->amOnPage('/');
$I->see('Log In with Github');
$I->click('Log In with Github');
$I->see('Profile');