<?php
/* Smarty version 4.3.4, created on 2025-04-17 19:46:22
  from 'C:\laragon\www\prestashop\prestashop\themes\classic\templates\_partials\helpers.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_68014c7e3ea869_12897628',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '282536681dc1a76aee08186972d24b8c5733e60c' => 
    array (
      0 => 'C:\\laragon\\www\\prestashop\\prestashop\\themes\\classic\\templates\\_partials\\helpers.tpl',
      1 => 1744915011,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68014c7e3ea869_12897628 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'renderLogo' => 
  array (
    'compiled_filepath' => 'C:\\laragon\\www\\prestashop\\prestashop\\var\\cache\\prod\\smarty\\compile\\classiclayouts_layout_full_width_tpl\\28\\25\\36\\282536681dc1a76aee08186972d24b8c5733e60c_2.file.helpers.tpl.php',
    'uid' => '282536681dc1a76aee08186972d24b8c5733e60c',
    'call_name' => 'smarty_template_function_renderLogo_130398464968014c7e3e4915_29068530',
  ),
));
?> 

<?php }
/* smarty_template_function_renderLogo_130398464968014c7e3e4915_29068530 */
if (!function_exists('smarty_template_function_renderLogo_130398464968014c7e3e4915_29068530')) {
function smarty_template_function_renderLogo_130398464968014c7e3e4915_29068530(Smarty_Internal_Template $_smarty_tpl,$params) {
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}
?>

  <a href="<?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['urls']->value['pages']['index'], ENT_QUOTES, 'UTF-8');?>
">
    <img
      class="logo img-fluid"
      src="<?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['shop']->value['logo_details']['src'], ENT_QUOTES, 'UTF-8');?>
"
      alt="<?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['shop']->value['name'], ENT_QUOTES, 'UTF-8');?>
"
      width="<?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['shop']->value['logo_details']['width'], ENT_QUOTES, 'UTF-8');?>
"
      height="<?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['shop']->value['logo_details']['height'], ENT_QUOTES, 'UTF-8');?>
">
  </a>
<?php
}}
/*/ smarty_template_function_renderLogo_130398464968014c7e3e4915_29068530 */
}
