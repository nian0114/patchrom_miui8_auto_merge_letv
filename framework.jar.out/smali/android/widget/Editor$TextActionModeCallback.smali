.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mHasSelection:Z

.field private mPopupOffset:I

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Z)V
    .locals 4
    .param p2, "hasSelection"    # Z

    .prologue
    .line 3304
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3294
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 3295
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 3305
    iput-boolean p2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 3306
    iget-boolean v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v2, :cond_2

    .line 3307
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 3308
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$2500(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3310
    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$2600(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3311
    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$2700(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 3312
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3314
    :cond_0
    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 3325
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mPopupOffset:I

    .line 3328
    return-void

    .line 3318
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 3319
    .local v0, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v0, :cond_1

    .line 3320
    # invokes: Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->access$300(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;

    .line 3321
    # getter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_0
.end method

.method private getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 3360
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3367
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelect()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/letv/leui/text/LeTextOpt;->updateSelecItem(Landroid/view/Menu;Landroid/widget/TextView;Z)V

    .line 3368
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020032

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-nez v0, :cond_4

    move v3, v6

    :goto_0
    const v4, 0x1020033

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-nez v0, :cond_5

    move v5, v6

    :goto_1
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/text/LeTextOpt;->updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V

    .line 3371
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v6

    :goto_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v6

    :goto_3
    invoke-static {p1, v2, v0, v1}, Lcom/letv/leui/text/LeTextOpt;->updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V

    .line 3374
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3375
    const v0, 0x1020020

    const v1, 0x1040003

    invoke-interface {p1, v7, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x78

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3381
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3382
    const v0, 0x1020021

    const v1, 0x1040001

    invoke-interface {p1, v7, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3388
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3389
    const v0, 0x1020022

    const/4 v1, 0x3

    const v2, 0x104000b

    invoke-interface {p1, v7, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3395
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3396
    const v0, 0x1020035

    const/4 v1, 0x4

    const v2, 0x1040463

    invoke-interface {p1, v7, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3401
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canShowClipboard()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/letv/leui/text/LeTextOpt;->updateClipboardItem(Landroid/view/Menu;Landroid/widget/TextView;Z)V

    .line 3404
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3405
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3406
    return-void

    :cond_4
    move v3, v7

    .line 3368
    goto/16 :goto_0

    :cond_5
    move v5, v7

    goto/16 :goto_1

    :cond_6
    move v0, v7

    .line 3371
    goto/16 :goto_2

    :cond_7
    move v1, v7

    goto/16 :goto_3
.end method

.method private updateReplaceItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x1020034

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3444
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z
    invoke-static {v4}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v2

    .line 3446
    .local v0, "canReplace":Z
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 3447
    .local v1, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 3449
    const/16 v4, 0x11

    const v5, 0x1040350

    invoke-interface {p1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3456
    :cond_1
    :goto_2
    return-void

    .end local v0    # "canReplace":Z
    .end local v1    # "replaceItemExists":Z
    :cond_2
    move v0, v3

    .line 3444
    goto :goto_0

    .restart local v0    # "canReplace":Z
    :cond_3
    move v1, v3

    .line 3446
    goto :goto_1

    .line 3453
    .restart local v1    # "replaceItemExists":Z
    :cond_4
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 3454
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v6, 0x102001f

    .line 3430
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 3431
    .local v0, "canSelectAll":Z
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 3432
    .local v1, "selectAllItemExists":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 3434
    const/16 v4, 0x10

    const v5, 0x104000d

    invoke-interface {p1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3441
    :cond_0
    :goto_1
    return-void

    .end local v1    # "selectAllItemExists":Z
    :cond_1
    move v1, v3

    .line 3431
    goto :goto_0

    .line 3438
    .restart local v1    # "selectAllItemExists":Z
    :cond_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3439
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 3460
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v9, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3511
    :cond_0
    :goto_0
    return v8

    .line 3463
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v1

    .line 3464
    .local v1, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3468
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-static {v9}, Lcom/letv/leui/text/LeTextOpt;->isSectionItem(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3469
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 3470
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3471
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->startWordsSelection()V

    .line 3475
    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 3476
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideFloatingToolbar()V
    invoke-static {v9}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)V

    goto :goto_0

    .line 3473
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Editor$SelectionModifierCursorController;->startSectionSelection()V

    goto :goto_1

    .line 3479
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-static {v9}, Lcom/letv/leui/text/LeTextOpt;->isSelectItem(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3480
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_5

    move v5, v8

    .line 3481
    .local v5, "shouldRestartActionMode":Z
    :goto_2
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 3483
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 3484
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 3485
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3486
    .local v3, "length":I
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 3487
    .local v4, "select":I
    move v6, v4

    .line 3488
    .local v6, "start":I
    move v2, v4

    .line 3489
    .local v2, "end":I
    if-lez v4, :cond_6

    .line 3490
    add-int/lit8 v6, v4, -0x1

    .line 3494
    :goto_3
    if-ltz v6, :cond_0

    if-ge v6, v2, :cond_0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-gt v2, v9, :cond_0

    .line 3495
    check-cast v7, Landroid/text/Spannable;

    .end local v7    # "text":Ljava/lang/CharSequence;
    invoke-static {v7, v6, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3496
    if-eqz v5, :cond_0

    .line 3497
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 3480
    .end local v2    # "end":I
    .end local v3    # "length":I
    .end local v4    # "select":I
    .end local v5    # "shouldRestartActionMode":Z
    .end local v6    # "start":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 3492
    .restart local v2    # "end":I
    .restart local v3    # "length":I
    .restart local v4    # "select":I
    .restart local v5    # "shouldRestartActionMode":Z
    .restart local v6    # "start":I
    .restart local v7    # "text":Ljava/lang/CharSequence;
    :cond_6
    add-int/lit8 v2, v4, 0x1

    goto :goto_3

    .line 3501
    .end local v2    # "end":I
    .end local v3    # "length":I
    .end local v4    # "select":I
    .end local v5    # "shouldRestartActionMode":Z
    .end local v6    # "start":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_7
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-static {v9}, Lcom/letv/leui/text/LeTextOpt;->isClipBoardItem(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3503
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "leclipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    .line 3506
    .local v0, "clipboard":Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->showLeClipboard(Landroid/content/Context;)V

    .line 3507
    iget-object v9, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->stopTextActionMode()V

    goto/16 :goto_0

    .line 3511
    .end local v0    # "clipboard":Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;
    :cond_8
    iget-object v8, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3332
    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3333
    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3334
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3335
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 3337
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3338
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3339
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3341
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v2

    .line 3355
    :goto_0
    return v1

    .line 3347
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->canProcessText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3348
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v3, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 3351
    :cond_1
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3352
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHasTransientState(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 3355
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3516
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 3517
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 3518
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3526
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v1, :cond_1

    .line 3527
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3529
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3532
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 3533
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3536
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 3537
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 24
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    if-nez v18, :cond_1

    .line 3542
    :cond_0
    invoke-super/range {p0 .. p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3606
    :goto_0
    return-void

    .line 3545
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 3547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v7

    .line 3554
    .local v7, "firstVisibleLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 3555
    .local v8, "firstVisibleOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    .line 3556
    .local v13, "offsetStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    .line 3557
    .local v12, "offsetEnd":I
    if-ge v13, v8, :cond_2

    .line 3558
    move v13, v8

    .line 3560
    :cond_2
    if-ge v12, v8, :cond_3

    .line 3561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 3564
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v12, v1}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v9

    .line 3568
    .local v9, "isSectionMode":Z
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v18

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SectionTopHandleView;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 3569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v20

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SectionTopHandleView;

    move-result-object v20

    # getter for: Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor$SectionTopHandleView;->access$3400(Landroid/widget/Editor$SectionTopHandleView;)I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 3571
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mPopupOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 3572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mPopupOffset:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 3599
    .end local v7    # "firstVisibleLine":I
    .end local v8    # "firstVisibleOffset":I
    .end local v9    # "isSectionMode":Z
    .end local v12    # "offsetEnd":I
    .end local v13    # "offsetStart":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v16

    .line 3600
    .local v16, "textHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v17

    .line 3601
    .local v17, "textVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 3575
    .end local v16    # "textHorizontalOffset":I
    .end local v17    # "textVerticalOffset":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/Editor;->mCursorCount:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 3578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 3579
    .local v6, "firstCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 3580
    .local v15, "secondCursorBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 3588
    .end local v6    # "firstCursorBounds":Landroid/graphics/Rect;
    .end local v15    # "secondCursorBounds":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # invokes: Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v10

    .line 3589
    .local v10, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 3590
    .local v11, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v14

    .line 3592
    .local v14, "primaryHorizontal":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual {v10, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v14, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3411
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelect()Z

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/letv/leui/text/LeTextOpt;->updateSelecItem(Landroid/view/Menu;Landroid/widget/TextView;Z)V

    .line 3412
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1020032

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-nez v0, :cond_2

    move v3, v7

    :goto_0
    const v4, 0x1020033

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-nez v0, :cond_3

    move v5, v7

    :goto_1
    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/text/LeTextOpt;->updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V

    .line 3415
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isInSectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v8, v7

    :cond_0
    invoke-static {p2, v1, v0, v8}, Lcom/letv/leui/text/LeTextOpt;->updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V

    .line 3419
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 3420
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 3422
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v6

    .line 3423
    .local v6, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v6, :cond_1

    .line 3424
    invoke-interface {v6, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    .line 3426
    :cond_1
    return v7

    .end local v6    # "customCallback":Landroid/view/ActionMode$Callback;
    :cond_2
    move v3, v8

    .line 3412
    goto :goto_0

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    move v0, v8

    .line 3415
    goto :goto_2
.end method
