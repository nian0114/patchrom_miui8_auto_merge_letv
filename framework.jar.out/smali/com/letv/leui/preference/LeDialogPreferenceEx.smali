.class public abstract Lcom/letv/leui/preference/LeDialogPreferenceEx;
.super Landroid/preference/Preference;
.source "LeDialogPreferenceEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    .line 80
    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    .line 85
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogMessage:Ljava/lang/CharSequence;

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 88
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 89
    const/4 v1, 0x5

    iget v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method private callActivityDestroyListener(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 286
    .local v1, "manager":Landroid/preference/PreferenceManager;
    const/4 v0, 0x0

    .line 287
    .local v0, "clazzs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 289
    .local v3, "objs":[Ljava/lang/Object;
    new-array v0, v6, [Ljava/lang/Class;

    .line 290
    const-class v4, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    aput-object v4, v0, v5

    .line 292
    new-array v3, v6, [Ljava/lang/Object;

    .line 293
    aput-object p0, v3, v5

    .line 295
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 297
    :try_start_0
    const-class v4, Landroid/preference/PreferenceManager;

    invoke-virtual {v4, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 298
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 363
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 364
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 395
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 397
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 399
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    const/4 v2, 0x0

    .line 405
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 406
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 412
    iput p2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mWhichButtonClicked:I

    .line 413
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 375
    iget v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 380
    :goto_0
    return-object v1

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 380
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 432
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 418
    const-string v0, "unregisterOnActivityDestroyListener"

    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->callActivityDestroyListener(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    .line 421
    iget v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onDialogClosed(Z)V

    .line 422
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/letv/leui/widget/LePopupWindow$Builder;

    .prologue
    .line 274
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 470
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 481
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 476
    check-cast v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;

    .line 477
    .local v0, "myState":Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 478
    iget-boolean v1, v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 457
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 458
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 465
    :goto_0
    return-object v0

    .line 462
    :cond_1
    new-instance v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 463
    .local v0, "myState":Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->isDialogShowing:Z

    .line 464
    iget-object v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogLayoutResId:I

    .line 254
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogMessage:Ljava/lang/CharSequence;

    .line 144
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 225
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 197
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mWhichButtonClicked:I

    .line 315
    new-instance v3, Lcom/letv/leui/widget/LePopupWindow$Builder;

    invoke-direct {v3, v1}, Lcom/letv/leui/widget/LePopupWindow$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

    .line 321
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

    invoke-virtual {p0, v3}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V

    .line 333
    const-string v3, "registerOnActivityDestroyListener"

    invoke-direct {p0, v3}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->callActivityDestroyListener(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LePopupWindow$Builder;->createBottom()Lcom/letv/leui/widget/LePopupWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialog:Landroid/app/Dialog;

    .line 337
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-direct {p0, v2}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->requestInputMethod(Landroid/app/Dialog;)V

    .line 343
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 344
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 345
    check-cast v2, Lcom/letv/leui/widget/LePopupWindow;

    .end local v2    # "dialog":Landroid/app/Dialog;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LePopupWindow;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const v4, -0xdc6a12

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 346
    return-void

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mBuilder:Lcom/letv/leui/widget/LePopupWindow$Builder;

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    goto :goto_0
.end method
