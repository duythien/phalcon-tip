<?php
/**
 * @var \Codeception\Scenario $scenario
 */

$I = new Step\Functional\UserSteps($scenario);

$I->wantTo('perform shadow login as first user');
$I->haveInSession('identity', 1);
$I->haveInSession('identity-name', 'Phalcon');
$I->amOnPage('/');
$I->seeInTitle('Tips - Phalcon Framework');
