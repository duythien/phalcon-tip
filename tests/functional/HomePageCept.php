<?php
/**
 * @var \Codeception\Scenario $scenario
 */

$I = new Step\Functional\UserSteps($scenario);

$I->wantTo('Verify that the home page wellcome me');
$I->amOnPage('/');
$I->see('Log In with Github');
$I->amRegularUser();
$I->amOnPage('/');
$I->see('Profile');
