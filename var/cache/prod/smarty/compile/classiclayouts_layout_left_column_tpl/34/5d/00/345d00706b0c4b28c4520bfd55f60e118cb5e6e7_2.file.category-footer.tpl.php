<?php
/* Smarty version 4.3.4, created on 2025-04-17 19:46:42
  from 'C:\laragon\www\prestashop\prestashop\themes\classic\templates\catalog\_partials\category-footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_68014c92c630f4_39830917',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '345d00706b0c4b28c4520bfd55f60e118cb5e6e7' => 
    array (
      0 => 'C:\\laragon\\www\\prestashop\\prestashop\\themes\\classic\\templates\\catalog\\_partials\\category-footer.tpl',
      1 => 1744915011,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68014c92c630f4_39830917 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="js-product-list-footer">
    <?php if ((isset($_smarty_tpl->tpl_vars['category']->value)) && $_smarty_tpl->tpl_vars['category']->value['additional_description'] && $_smarty_tpl->tpl_vars['listing']->value['pagination']['items_shown_from'] == 1) {?>
        <div class="card">
            <div class="card-block category-additional-description">
                <?php echo $_smarty_tpl->tpl_vars['category']->value['additional_description'];?>

            </div>
        </div>
    <?php }?>
</div>
<?php }
}
