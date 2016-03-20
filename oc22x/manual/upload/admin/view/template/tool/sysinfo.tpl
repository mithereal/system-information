<?php echo $header; ?>
<?php echo $menu; ?>

<div id="content">

<ul class="uk-breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php if ($breadcrumb['href']) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>" class="uk-link"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } else { ?>
            <li class="<?php echo ($breadcrumb['class'] == 'active') ? 'uk-active' : ''; ?>"><span><?php echo $breadcrumb['text']; ?></span></li>
        <?php } ?>
    <?php } ?>
</ul>

<div class="uk-container uk-container-center">

<div class="uk-grid app-title">
    <div class="uk-width-2-3">
        <h2>
            <?php echo $ext_name; ?>
            <span class="uk-text-medium">v<?php echo $ext_version; ?></span>
        </h2>
    </div>
    <div class="uk-width-1-3 uk-text-right">
        <div class="by-et">
            By: <a href="http://www.echothemes.com" target="_blank">EchoThemes</a>
        </div>
    </div>
</div>

<div class="et-content-border">
<div id="et-content">

    <h2 class="uk-section"><?php echo $section_site_info; ?></h2>

    <div class="uk-grid">
        <div class="uk-width-1-2">
            <table class="uk-table uk-table-striped uk-table-hover">
                <tr>
                    <td class="uk-width-3-5"><?php echo $text_oc_version; ?></td>
                    <td><?php echo VERSION; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_stores; ?></td>
                    <td><?php echo $stores; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_ssl; ?></td>
                    <td><?php echo $ssl ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_seo; ?></td>
                    <td><?php echo $seo ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_maintenance; ?></td>
                    <td><?php echo $maintenance ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_compression; ?></td>
                    <td><?php echo $compression; ?></td>
                </tr>
            </table>
        </div>
        <div class="uk-width-1-2">
            <table class="uk-table uk-table-striped uk-table-hover">
                <tr>
                    <td class="uk-width-3-5"><?php echo $text_mail; ?></td>
                    <td><?php echo ucwords($mail); ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_ftp; ?></td>
                    <td><?php echo $ftp ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_captcha; ?></td>
                    <td><?php echo $captcha; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_currency; ?></td>
                    <td><?php echo $currency ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_error_display; ?></td>
                    <td><?php echo $error_display ? $text_enable : $text_disable; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_error_log; ?></td>
                    <td><?php echo $error_log ? $text_enable : $text_disable; ?></td>
                </tr>
            </table>
        </div>
    </div>

    <h2 class="uk-section"><?php echo $section_server_info; ?></h2>
    <div class="uk-float-right uk-text-small" style="margin-top:-30px">
        <?php echo $text_full_phpinfo; ?> <a href="<?php echo $url_phpinfo; ?>" target="_blank">phpnfo()</a>
    </div>

    <table class="uk-table uk-table-striped uk-table-hover">
        <thead>
            <tr>
                <th colspan="2"><?php echo $text_machine; ?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="uk-width-3-10"><?php echo $text_operating_sys; ?></td>
                <td><?php echo php_uname(); ?></td>
            </tr>
            <tr>
                <td><?php echo $text_web_server; ?></td>
                <td><?php echo $_SERVER['SERVER_SOFTWARE']; ?></td>
            </tr>
            <tr>
                <td><?php echo $text_web_host; ?></td>
                <td><?php echo $_SERVER['HTTP_HOST']; ?></td>
            </tr>
            <tr>
                <td><?php echo $text_root_path; ?></td>
                <td><?php echo $_SERVER["DOCUMENT_ROOT"]; ?></td>
            </tr>
        </tbody>
    </table>
    
    <?php if (in_array(DB_DRIVER, array('mysql', 'mysqli'))) { ?>
        <table class="uk-table uk-table-striped uk-table-hover">
            <thead>
                <tr>
                    <th colspan="2"><?php echo $text_database; ?></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="uk-width-3-10"><?php echo $text_db_driver; ?></td>
                    <td><?php echo strtoupper(DB_DRIVER); ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_db_version; ?></td>
                    <td><?php echo $db_server; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_db_host; ?></td>
                    <td><?php echo $db_host; ?></td>
                </tr>
                <tr>
                    <td><?php echo $text_db_name; ?></td>
                    <td><?php echo DB_DATABASE; ?></td>
                </tr>
            </tbody>
        </table>
    <?php } ?>

    <table class="uk-table uk-table-striped uk-table-hover">
        <thead>
            <tr>
                <th colspan="2"><?php echo $text_timezone; ?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="uk-width-3-10"><?php echo $text_ini_timezone; ?></td>
                <td><?php echo ini_get('date.timezone'); ?> <?php echo !ini_get('date.timezone') ? '- <span class="uk-text-small uk-text-muted">( ' . $text_not_set . ' )</span>' : ''; ?></td>
            </tr>
            <tr>
                <td><?php echo $text_php_timezone; ?></td>
                <td><?php echo date_default_timezone_get(); ?></td>
            </tr>
            <tr>
                <td><?php echo $text_db_timezone; ?></td>
                <td><?php echo $db_timezone; ?> <?php echo $db_timezone == 'SYSTEM' ? '<span class="uk-text-small uk-text-muted">( ' . $text_os_timezone . ' )</span>' : ''; ?></td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr>
                <td><?php echo $text_php_date_now; ?></td>
                <td><?php echo date('l, F d, Y'); ?></td>
            </tr>
            <tr>
                <td><?php echo $text_php_time_now; ?></td>
                <td><?php echo date('h:i:s A'); ?></td>
            </tr>
            <tr>
                <td>Database Date Now</td>
                <td><?php echo date('l, F d, Y', strtotime($db_datetime)); ?></td>
            </tr>
            <tr>
                <td>Database Time Now</td>
                <td><?php echo date('h:i:s A', strtotime($db_datetime)); ?></td>
            </tr>
        </tbody>
    </table>

    <h2 class="uk-section"><?php echo $section_requirement; ?></h2>

    <table class="uk-table uk-table-striped uk-table-hover uk-text-center">
        <thead>
            <tr>
                <th class="uk-width-9-20"><?php echo $text_setting; ?></th>
                <th class="uk-width-4-20 uk-text-center"><?php echo $text_required; ?></th>
                <th class="uk-width-4-20 uk-text-center"><?php echo $text_server; ?></th>
                <th class="uk-width-3-20 uk-text-center"><?php echo $text_status; ?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="uk-text-left"><?php echo $text_php_version; ?></td>
                <td><?php echo $text_req_php_version; ?></td>
                <td><?php echo phpversion(); ?></td>
                <td><?php echo (phpversion() >= '5.3') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_safe_mode; ?></td>
                <td><?php echo $text_off; ?></td>
                <td><?php echo (ini_get('safe_mode')) ? '<span class="uk-badge uk-badge-danger">'.$text_on.'</span>' : $text_off; ?></td>
                <td><?php echo (!ini_get('safe_mode')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_register_globals; ?></td>
                <td><?php echo $text_off; ?></td>
                <td><?php echo (ini_get('register_globals')) ? '<span class="uk-badge uk-badge-danger">'.$text_on.'</span>' : $text_off; ?></td>
                <td><?php echo (!ini_get('register_globals')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_magic_quotes;?></td>
                <td><?php echo $text_off; ?></td>
                <td><?php echo (ini_get('magic_quotes_gpc') || get_magic_quotes_gpc()) ? '<span class="uk-badge uk-badge-danger">'.$text_on.'</span>' : $text_off; ?></td>
                <td><?php echo (!ini_get('magic_quotes_gpc') || !get_magic_quotes_gpc()) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_session_start;?></td>
                <td><?php echo $text_off; ?></td>
                <td><?php echo (ini_get('session_auto_start')) ? '<span class="uk-badge uk-badge-danger">'.$text_on.'</span>' : $text_off; ?></td>
                <td><?php echo (!ini_get('session_auto_start')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_allow_url_fopen;?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo (ini_get('allow_url_fopen')) ? $text_on : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo (ini_get('allow_url_fopen')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_mcrypt;?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('mcrypt') || function_exists('mcrypt_encrypt') ? $text_on : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('mcrypt') || function_exists('mcrypt_encrypt') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_file_uploads;?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo (ini_get('file_uploads')) ? $text_on : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo (ini_get('file_uploads')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_session_cookies;?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo (ini_get('session.use_cookies')) ? $text_on : $text_off; ?></td>
                <td><?php echo (ini_get('session.use_cookies')) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
        </tbody>
    </table>

    <table class="uk-table uk-table-striped uk-table-hover uk-text-center">
        <thead>
            <tr>
                <th class="uk-width-9-20"><?php echo $text_extenisons; ?></th>
                <th class="uk-width-4-20 uk-text-center"><?php echo $text_required; ?></th>
                <th class="uk-width-4-20 uk-text-center"><?php echo $text_current; ?></th>
                <th class="uk-width-3-20 uk-text-center"><?php echo $text_status; ?></th>
            </tr>
        </thead>
        <tbody>
            <?php if (in_array(DB_DRIVER, array('mysql', 'mysqli'))) { ?>
                <tr>
                    <td class="uk-text-left"><?php echo sprintf($text_database_type, strtoupper(DB_DRIVER)); ?></td>
                    <td><?php echo $text_on; ?></td>
                    <td><?php echo extension_loaded(DB_DRIVER) ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                    <td><?php echo extension_loaded(DB_DRIVER) ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
                </tr>
            <?php } ?>
            <tr>
                <td class="uk-text-left"><?php echo $text_gd; ?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('gd') ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('gd') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_curl; ?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('curl') ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('curl') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_fsock; ?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('sockets') || function_exists('fsockopen') ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('sockets') || function_exists('fsockopen') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_zip; ?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('zlib') ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('zlib') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo $text_xml; ?></td>
                <td><?php echo $text_on; ?></td>
                <td><?php echo extension_loaded('xml') ? 'On' : '<span class="uk-badge uk-badge-danger">'.$text_off.'</span>'; ?></td>
                <td><?php echo extension_loaded('xml') ? '<i class="uk-icon-check uk-icon-small uk-text-success"></i>' : '<i class="uk-icon-times uk-icon-small uk-text-danger"></i>'; ?></td>
            </tr>
        </tbody>
    </table>

    <h2 class="uk-section"><?php echo $section_permission; ?></h2>

    <table class="uk-table uk-table-striped uk-table-hover uk-text-center">
        <thead>
            <tr>
                <th><?php echo $text_directories; ?></th>
                <th class="uk-width-2-10 uk-text-center"><?php echo $text_permission; ?></th>
                <th class="uk-width-2-10 uk-text-center"><?php echo $text_status; ?></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_IMAGE))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_IMAGE)), -3); ?></td>
                <td><?php echo is_writable(DIR_IMAGE) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',(DIR_IMAGE . 'catalog').'/'))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_IMAGE . 'catalog')), -3); ?></td>
                <td><?php echo is_writable(DIR_IMAGE . 'catalog') ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',(DIR_IMAGE . 'cache').'/'))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_IMAGE . 'cache')), -3); ?></td>
                <td><?php echo is_writable(DIR_IMAGE . 'cache') ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_LOGS))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_LOGS)), -3); ?></td>
                <td><?php echo is_writable(DIR_LOGS) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_CACHE))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_CACHE)), -3); ?></td>
                <td><?php echo is_writable(DIR_CACHE) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_UPLOAD))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_UPLOAD)), -3); ?></td>
                <td><?php echo is_writable(DIR_UPLOAD) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_DOWNLOAD))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_DOWNLOAD)), -3); ?></td>
                <td><?php echo is_writable(DIR_DOWNLOAD) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <tr>
                <td class="uk-text-left"><?php echo str_replace($_SERVER['DOCUMENT_ROOT'],'',(str_replace('\\','/',DIR_MODIFICATION))); ?></td>
                <td><?php echo substr(sprintf('%o', fileperms(DIR_MODIFICATION)), -3); ?></td>
                <td><?php echo is_writable(DIR_MODIFICATION) ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
            </tr>
            <?php if (file_exists('../vqmod/')) { ?>
                <?php if (file_exists('../vqmod/vqcache')) { ?>
                    <tr>
                        <td class="uk-text-left"><?php echo '/vqmod/vqcache/'; ?></td>
                        <td><?php echo substr(sprintf('%o', fileperms('../vqmod/vqcache')), -3); ?></td>
                        <td><?php echo is_writable('../vqmod/vqcache') ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
                    </tr>
                <?php } ?>
                <?php if (file_exists('../vqmod/logs')) { ?>
                    <tr>
                        <td class="uk-text-left"><?php echo '/vqmod/logs/'; ?></td>
                        <td><?php echo substr(sprintf('%o', fileperms('../vqmod/logs')), -3); ?></td>
                        <td><?php echo is_writable('../vqmod/logs') ? '<span class="uk-badge uk-badge-success">' . $text_writable . '</span>' : '<span class="uk-badge uk-badge-danger">' . $text_unwritable . '</span>'; ?></td>
                    </tr>
                <?php } ?>
            <?php } ?>
        </tbody>
    </table>

</div> <!-- /#et-content -->
</div>
</div>

</div> <!-- /#content -->

<?php echo $footer; ?>