.class public Lcom/letv/leui/preference/LePassWordPreference;
.super Lcom/letv/leui/preference/LeEditTextPreference;
.source "LePassWordPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    }
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c7

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LePassWordPreference$1;-><init>(Lcom/letv/leui/preference/LePassWordPreference;)V

    return-object v0
.end method


# virtual methods
.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/letv/leui/preference/LePassWordPreference;->getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LePassWordPreference;->syncEditTextShow(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    .local v0, "myState":Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/preference/LePassWordPreference$SavedState;-><init>(Lcom/letv/leui/preference/LePassWordPreference;Landroid/os/Parcelable;)V

    .local v0, "myState":Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method syncEditTextShow(Z)V
    .locals 2
    .param p1, "isPassWord"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
