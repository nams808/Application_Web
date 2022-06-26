<?php
session_start();
session_destroy();
require_once('../model/functions.php');
redirect('../login.php');
