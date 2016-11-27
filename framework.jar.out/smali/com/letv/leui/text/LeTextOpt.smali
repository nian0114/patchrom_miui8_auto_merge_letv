.class public Lcom/letv/leui/text/LeTextOpt;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeTextOpt$LeMarquee;,
        Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;,
        Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;,
        Lcom/letv/leui/text/LeTextOpt$LeTextInfo;
    }
.end annotation


# static fields
.field private static final ID_SECTION:I = 0x1020076

.field private static final ID_SELECT:I = 0x1020061

.field public static final MENU_ITEM_ORDER_BEGIN:I = 0xb

.field public static final MENU_ITEM_ORDER_COPY:I = 0x2

.field public static final MENU_ITEM_ORDER_CUT:I = 0x1

.field public static final MENU_ITEM_ORDER_PASTE:I = 0x3

.field public static final MENU_ITEM_ORDER_REDO:I = 0xd

.field public static final MENU_ITEM_ORDER_REPLACE:I = 0x11

.field public static final MENU_ITEM_ORDER_SECTION:I = 0xe

.field public static final MENU_ITEM_ORDER_SELECT:I = 0xf

.field public static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x10

.field public static final MENU_ITEM_ORDER_SHARE:I = 0x4

.field public static final MENU_ITEM_ORDER_UNDO:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    return-void
.end method

.method public static isLineEndOffset(Landroid/text/Layout;I)Z
    .locals 4
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 142
    if-nez p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 145
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 146
    .local v1, "offsetLine":I
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 148
    .local v0, "lineEnd":I
    if-ne v0, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "lineEnd":I
    :cond_2
    move v2, v3

    .line 146
    goto :goto_1
.end method

.method public static isSectionItem(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 134
    const v0, 0x1020076

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectItem(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 138
    const v0, 0x1020061

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateSectionItem(Landroid/view/Menu;Landroid/widget/TextView;ZZ)V
    .locals 10
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isSelectinMode"    # Z
    .param p3, "isInSectionMode"    # Z

    .prologue
    const v3, 0x10405ee

    const v4, 0x10405ed

    const/4 v6, 0x0

    const v9, 0x1020076

    const/4 v5, 0x1

    .line 109
    invoke-interface {p0, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    move v1, v5

    .line 111
    .local v1, "sectionItemExists":Z
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v5, :cond_3

    move v2, v5

    .line 112
    .local v2, "showSectionMode":Z
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 113
    :cond_0
    if-nez v1, :cond_1

    .line 114
    invoke-interface {p0, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 131
    :cond_1
    :goto_2
    return-void

    .end local v1    # "sectionItemExists":Z
    .end local v2    # "showSectionMode":Z
    :cond_2
    move v1, v6

    .line 110
    goto :goto_0

    .restart local v1    # "sectionItemExists":Z
    :cond_3
    move v2, v6

    .line 111
    goto :goto_1

    .line 118
    .restart local v2    # "showSectionMode":Z
    :cond_4
    if-eqz p2, :cond_6

    if-nez v1, :cond_6

    .line 119
    const/16 v7, 0xe

    if-eqz p3, :cond_5

    :goto_3
    invoke-interface {p0, v6, v9, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 124
    :cond_6
    if-eqz p2, :cond_8

    .line 125
    if-eqz p3, :cond_7

    :goto_4
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_4

    .line 128
    :cond_8
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 129
    invoke-interface {p0, v9}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public static updateSelecItem(Landroid/view/Menu;Landroid/widget/TextView;Z)V
    .locals 6
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "canSelect"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x1020061

    .line 96
    invoke-interface {p0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 97
    .local v0, "selectItemExists":Z
    :goto_0
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 98
    const/16 v3, 0xf

    const v4, 0x10405f1

    invoke-interface {p0, v2, v5, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 105
    :cond_0
    :goto_1
    return-void

    .end local v0    # "selectItemExists":Z
    :cond_1
    move v0, v2

    .line 96
    goto :goto_0

    .line 102
    .restart local v0    # "selectItemExists":Z
    :cond_2
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p0, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method public static updateUndoRedoItem(Landroid/view/Menu;Landroid/widget/TextView;IZIZ)V
    .locals 6
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "undoId"    # I
    .param p3, "canUndo"    # Z
    .param p4, "redoId"    # I
    .param p5, "canRedo"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-interface {p0, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 74
    .local v1, "canUndoExists":Z
    :goto_0
    if-eqz p3, :cond_3

    if-nez v1, :cond_3

    .line 75
    const/16 v4, 0xc

    const v5, 0x10405ef

    invoke-interface {p0, v3, p2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 84
    :cond_0
    :goto_1
    invoke-interface {p0, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 85
    .local v0, "canRedoExists":Z
    :goto_2
    if-eqz p5, :cond_5

    if-nez v0, :cond_5

    .line 86
    const/16 v4, 0xd

    const v5, 0x10405f0

    invoke-interface {p0, v3, p4, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 92
    :cond_1
    :goto_3
    return-void

    .end local v0    # "canRedoExists":Z
    .end local v1    # "canUndoExists":Z
    :cond_2
    move v1, v3

    .line 73
    goto :goto_0

    .line 78
    .restart local v1    # "canUndoExists":Z
    :cond_3
    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {p0, p2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 84
    goto :goto_2

    .line 89
    .restart local v0    # "canRedoExists":Z
    :cond_5
    if-nez p5, :cond_1

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {p0, p4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3
.end method
