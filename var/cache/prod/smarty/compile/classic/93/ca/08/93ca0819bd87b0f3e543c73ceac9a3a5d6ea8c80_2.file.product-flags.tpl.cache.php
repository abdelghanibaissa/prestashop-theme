<?php
/* Smarty version 4.3.4, created on 2025-04-17 19:46:21
  from 'C:\laragon\www\prestashop\prestashop\themes\classic\templates\catalog\_partials\product-flags.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_68014c7df25455_36597383',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '93ca0819bd87b0f3e543c73ceac9a3a5d6ea8c80' => 
    array (
      0 => 'C:\\laragon\\www\\prestashop\\prestashop\\themes\\classic\\templates\\catalog\\_partials\\product-flags.tpl',
      1 => 1744915011,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68014c7df25455_36597383 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->compiled->nocache_hash = '62795933768014c7df22f63_54167695';
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_170202806668014c7df23a93_62397173', 'product_flags');
?>

<?php }
/* {block 'product_flags'} */
class Block_170202806668014c7df23a93_62397173 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'product_flags' => 
  array (
    0 => 'Block_170202806668014c7df23a93_62397173',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <ul class="product-flags js-product-flags">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['product']->value['flags'], 'flag');
$_smarty_tpl->tpl_vars['flag']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['flag']->value) {
$_smarty_tpl->tpl_vars['flag']->do_else = false;
?>
            <li class="product-flag <?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['flag']->value['type'], ENT_QUOTES, 'UTF-8');?>
"><?php echo htmlspecialchars((string) $_smarty_tpl->tpl_vars['flag']->value['label'], ENT_QUOTES, 'UTF-8');?>
</li>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </ul>
<?php
}
}
/* {/block 'product_flags'} */
}
