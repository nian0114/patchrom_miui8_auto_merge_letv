.class public Lcom/letv/leui/preference/LeRadioPreference;
.super Landroid/preference/Preference;
.source "LeRadioPreference.java"


# static fields
.field public static MODE_NORMAL:I

.field public static MODE_RADIO:I


# instance fields
.field private boxArrowColorWithoutBorderColor:I

.field changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

.field private checkedColor:Landroid/content/res/ColorStateList;

.field initialValue:Z

.field initialcheckedKey:Ljava/lang/String;

.field isInitialBindView:Z

.field mChecked:Z

.field private mode:I

.field private radioButton:Lcom/letv/leui/widget/LeCheckBox;

.field private uncheckedColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/letv/leui/preference/LeRadioPreference;->MODE_NORMAL:I

    const/4 v0, 0x1

    sput v0, Lcom/letv/leui/preference/LeRadioPreference;->MODE_RADIO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c6

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/letv/leui/preference/LeRadioPreference;->isInitialBindView:Z

    iput-boolean v2, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialValue:Z

    iput-boolean v2, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    iput v2, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    sget-object v1, Lcom/android/internal/R$styleable;->LeRadioPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/letv/leui/preference/LeRadioPreference;->MODE_NORMAL:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->checkedColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->uncheckedColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->boxArrowColorWithoutBorderColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/letv/leui/preference/LeRadioPreference;->enableCanRecyleLayout()V

    return-void
.end method

.method private enableCanRecyleLayout()V
    .locals 4

    .prologue
    :try_start_0
    const-class v2, Landroid/preference/Preference;

    const-string v3, "mCanRecycleLayout"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "mCanRecycleLayout":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "mCanRecycleLayout":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/preference/LeRadioPreference$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeRadioPreference$1;-><init>(Lcom/letv/leui/preference/LeRadioPreference;)V

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    goto :goto_0
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v1, 0x1020493

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->isInitialBindView:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialcheckedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialcheckedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    :goto_0
    iput-boolean v3, p0, Lcom/letv/leui/preference/LeRadioPreference;->isInitialBindView:Z

    :goto_1
    iget v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->boxArrowColorWithoutBorderColor:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    iget v4, p0, Lcom/letv/leui/preference/LeRadioPreference;->boxArrowColorWithoutBorderColor:I

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeCheckBox;->setArrowColorWithoutBorder(I)V

    :cond_0
    iget v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    sget v4, Lcom/letv/leui/preference/LeRadioPreference;->MODE_RADIO:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setClickable(Z)V

    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "title":Landroid/widget/TextView;
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->checkedColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->checkedColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->checkedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_3
    return-void

    .end local v0    # "title":Landroid/widget/TextView;
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    iget-boolean v4, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialValue:Z

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    iget-boolean v4, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .restart local v0    # "title":Landroid/widget/TextView;
    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->uncheckedColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010041

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->uncheckedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    sget v1, Lcom/letv/leui/preference/LeRadioPreference;->MODE_NORMAL:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;->onRadioChanged(ZLjava/lang/String;)V

    :cond_0
    iput-boolean v2, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeRadioPreference;->persistBoolean(Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialValue:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeRadioPreference;->getPersistedBoolean(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialValue:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void
.end method

.method public registerChangeListener(Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;
    .param p2, "initialcheckedKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    iput-object p2, p0, Lcom/letv/leui/preference/LeRadioPreference;->initialcheckedKey:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->isInitialBindView:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->isInitialBindView:Z

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->radioButton:Lcom/letv/leui/widget/LeCheckBox;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;->onRadioChanged(ZLjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->notifyChanged()V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeRadioPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeRadioPreference;->persistBoolean(Z)Z

    goto :goto_0
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-direct {p0}, Lcom/letv/leui/preference/LeRadioPreference;->enableCanRecyleLayout()V

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeRadioPreference;->mode:I

    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-direct {p0}, Lcom/letv/leui/preference/LeRadioPreference;->enableCanRecyleLayout()V

    return-void
.end method
