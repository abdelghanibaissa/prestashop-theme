<?php
/* Smarty version 4.3.4, created on 2025-04-17 21:54:45
  from 'C:\laragon\www\prestashop\prestashop\admin987hajreevcbjmm0rca\themes\new-theme\template\components\layout\confirmation_messages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_68016a95ae1843_30175977',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '18dcfbc4529920d6a636b159b0cfbec19416bcbb' => 
    array (
      0 => 'C:\\laragon\\www\\prestashop\\prestashop\\admin987hajreevcbjmm0rca\\themes\\new-theme\\template\\components\\layout\\confirmation_messages.tpl',
      1 => 1744915017,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68016a95ae1843_30175977 (Smarty_Internal_Template $_smarty_tpl) {
if ((isset($_smarty_tpl->tpl_vars['confirmations']->value)) && count($_smarty_tpl->tpl_vars['confirmations']->value) && $_smarty_tpl->tpl_vars['confirmations']->value) {?>
  <div class="bootstrap">
    <div class="alert alert-success" style="display:block;">
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['confirmations']->value, 'conf');
$_smarty_tpl->tpl_vars['conf']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['conf']->value) {
$_smarty_tpl->tpl_vars['conf']->do_else = false;
?>
        <?php echo $_smarty_tpl->tpl_vars['conf']->value;?>

      <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </div>
  </div>
<?php }
}
}
