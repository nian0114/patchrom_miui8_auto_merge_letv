.class public Lcom/letv/leui/widget/LePopupWindow$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "LePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

.field private isComplexItems:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->isComplexItems:Z

    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    return-void
.end method


# virtual methods
.method public createBottom()Lcom/letv/leui/widget/LePopupWindow;
    .locals 3

    .prologue
    new-instance v0, Lcom/letv/leui/widget/LePopupWindow;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    const v2, 0x103051c

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LePopupWindow;-><init>(Landroid/content/Context;I)V

    .local v0, "dialog":Lcom/letv/leui/widget/LePopupWindow;
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    # getter for: Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindow;->access$000(Lcom/letv/leui/widget/LePopupWindow;)Lcom/letv/leui/widget/LePopupWindowController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->apply(Lcom/letv/leui/widget/LePopupWindowController;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupWindow;->setCancelable(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupWindow;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupWindow;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupWindow;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setCancelable(Z)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCancelable(Z)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-boolean p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCancelable:Z

    return-object p0
.end method

.method public setClickDismiss(Z)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "isDismiss"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-boolean p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isClickDismiss:Z

    return-object p0
.end method

.method public setComplexItems(Ljava/util/List;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p2, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")",
            "Lcom/letv/leui/widget/LePopupWindow$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;>;"
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexOnClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isComplexView:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->isComplexItems:Z

    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setCustomTitle(Landroid/view/View;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setIcon(I)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setLicence(Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLicenceMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p4, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceOn()Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->isComplexItems:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(IILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(IILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(IILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonColor:I

    invoke-virtual {p0, p1, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p4, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p3, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput p2, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceOn()Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->isComplexItems:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setTitle(I)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "textId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setView(Landroid/view/View;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setView(Landroid/view/View;)Lcom/letv/leui/widget/LePopupWindow$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow$Builder;->P:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public showBottom()Lcom/letv/leui/widget/LePopupWindow;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindow$Builder;->createBottom()Lcom/letv/leui/widget/LePopupWindow;

    move-result-object v0

    .local v0, "dialog":Lcom/letv/leui/widget/LePopupWindow;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupWindow;->show()V

    return-object v0
.end method
