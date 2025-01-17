.class public Lcom/letv/leui/widget/LeTitleEditTextExt;
.super Landroid/widget/EditText;
.source "LeTitleEditTextExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;
    }
.end annotation


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field private mClearIconPadding:I

.field private mClearPadding:Landroid/graphics/Rect;

.field private mClearText:Ljava/lang/CharSequence;

.field private mClearTextColor:Landroid/content/res/ColorStateList;

.field private mClearTextHeight:I

.field private final mClearTextPaint:Landroid/text/TextPaint;

.field private mClearTextSize:F

.field private mClearTextWidth:I

.field private mColorActivated:I

.field private mCurClearTextColor:I

.field private mCurTitleTextColor:I

.field private mCurrentUnderlineColor:I

.field private mIsTouchClearArea:Z

.field private mIsTouchInSwitchArea:Z

.field private mKeepPwdSwitchShowing:Z

.field private mLeInputType:I

.field private mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

.field private mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

.field private mPwdSwitchColor:Landroid/content/res/ColorStateList;

.field private mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleHeight:I

.field private mTitleIcon:Landroid/graphics/drawable/Drawable;

.field mTitlePadding:Landroid/graphics/Rect;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private final mTitleTextPaint:Landroid/text/TextPaint;

.field private mTitleTextSize:F

.field private mTitleWidth:I

.field private mUnderlineColor:Landroid/content/res/ColorStateList;

.field private mUnderlineHeight:F

.field private showPwdVisibleSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    new-instance v17, Lcom/letv/leui/widget/LeTitleEditTextExt$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt$1;-><init>(Lcom/letv/leui/widget/LeTitleEditTextExt;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .local v8, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    const v18, 0x106000d

    invoke-direct/range {v17 .. v18}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/TextPaint;->density:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    const/4 v10, -0x1

    .local v10, "inputType":I
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/text/TextPaint;->density:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    const/4 v15, 0x0

    .local v15, "titleText":Ljava/lang/CharSequence;
    const v17, 0x1050159

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .local v16, "titleTextSize":I
    const v17, 0x10600fa

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    const v17, 0x108053f

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x1

    const/high16 v18, 0x41200000    # 10.0f

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    const v17, 0x106011a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mColorActivated:I

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .local v12, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .local v14, "theme":Landroid/content/res/Resources$Theme;
    const v17, 0x101042a

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v12, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v17

    if-eqz v17, :cond_0

    iget v0, v12, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mColorActivated:I

    :cond_0
    const v7, -0x595852

    .local v7, "colorNormal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v17, Landroid/content/res/ColorStateList;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/letv/leui/widget/LeTitleEditTextExt;->SELECTED_STATE_SET:[I

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/letv/leui/widget/LeTitleEditTextExt;->EMPTY_STATE_SET:[I

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mColorActivated:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-direct/range {v17 .. v19}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    sget-object v17, Lcom/android/internal/R$styleable;->LeTitleEditText:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .local v11, "n":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .local v6, "attr":I
    sparse-switch v6, :sswitch_data_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :sswitch_4
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :sswitch_5
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    goto :goto_1

    :sswitch_6
    move/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    goto :goto_1

    :sswitch_7
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    const v17, 0x1080526

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .end local v6    # "attr":I
    .end local v9    # "i":I
    .end local v11    # "n":I
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleText(Ljava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setIncludeFontPadding(Z)V

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_7

    and-int/lit16 v0, v10, 0xfff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setInputType(I)V

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x5 -> :sswitch_9
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x1f -> :sswitch_c
        0x26 -> :sswitch_8
        0x2d -> :sswitch_a
        0x2e -> :sswitch_d
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeTitleEditTextExt;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditTextExt;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    return v0
.end method

.method private internalInputTypeSet(I)V
    .locals 6
    .param p1, "inputType"    # I

    .prologue
    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const-string v3, "helve-neue"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v0

    .local v0, "isPassword":Z
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v1

    .local v1, "isVisiblePassword":Z
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/letv/leui/widget/LeTitleEditTextExt;->EMPTY_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mKeepPwdSwitchShowing:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setSelection(I)V

    goto :goto_0

    .end local v2    # "length":I
    :cond_4
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/letv/leui/widget/LeTitleEditTextExt;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mKeepPwdSwitchShowing:Z

    goto :goto_1
.end method

.method public static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    and-int/lit16 v0, p0, 0xfff

    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private measureClearArea(Landroid/text/TextPaint;FLjava/lang/String;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "clearTextSize"    # F
    .param p3, "clearText"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    return-void
.end method

.method private measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "titleTextSize"    # F
    .param p3, "titleText"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    return-void
.end method

.method private onClearText()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;->onClear()Z

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setClearDrawable(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setOnClearListener(Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    return-void
.end method

.method private setPressState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressing"    # Z

    .prologue
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updateClearTextColors()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateTitleTextColors()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateUnderlineColors()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "inval":Z
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    move v2, v1

    .end local v1    # "inval":Z
    .local v2, "inval":I
    :goto_0
    return v2

    .end local v2    # "inval":I
    .restart local v1    # "inval":Z
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    if-eq v0, v3, :cond_1

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .restart local v2    # "inval":I
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    const/4 v0, 0x0

    .local v0, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    move-result v2

    or-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    move-result v2

    or-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v1

    .local v1, "state":[I
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_4
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .local v0, "extraWidth":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    .local v0, "extraPadding":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isVisiblePasswordInputType(I)Z
    .locals 5
    .param p1, "inputType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0xfff

    .local v0, "variation":I
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    .local v15, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "titleText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .local v13, "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .local v20, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v2

    sub-int v2, v20, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v14, v2, v3

    .local v14, "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v19, v2, 0x70

    .local v19, "verticalGravity":I
    sparse-switch v19, :sswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v18    # "titleText":Ljava/lang/String;
    .end local v19    # "verticalGravity":I
    .end local v20    # "viewHeight":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .local v11, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v2

    sub-int v2, v20, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    .restart local v14    # "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v19, v2, 0x70

    .restart local v19    # "verticalGravity":I
    sparse-switch v19, :sswitch_data_1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v11    # "iconHeight":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v19    # "verticalGravity":I
    .end local v20    # "viewHeight":I
    :cond_1
    const/16 v16, 0x0

    .local v16, "pwdSwitchWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mKeepPwdSwitchShowing:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .restart local v11    # "iconHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .local v12, "iconWidth":I
    move/from16 v16, v12

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v12

    int-to-float v13, v2

    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    .restart local v14    # "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v20    # "viewHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    .restart local v11    # "iconHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .restart local v12    # "iconWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v2, v3

    sub-int v2, v2, v16

    int-to-float v13, v2

    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    .restart local v14    # "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v20    # "viewHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "clearText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v13, v2

    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .restart local v20    # "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v14, v2, v3

    .restart local v14    # "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v8    # "clearText":Ljava/lang/String;
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v20    # "viewHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .local v10, "extraWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v17

    .local v17, "strokeWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    int-to-float v3, v10

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    sub-float v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v9    # "color":I
    .end local v10    # "extraWidth":I
    .end local v17    # "strokeWidth":F
    :cond_6
    return-void

    .end local v16    # "pwdSwitchWidth":I
    .restart local v13    # "offsetX":F
    .restart local v14    # "offsetY":F
    .restart local v18    # "titleText":Ljava/lang/String;
    .restart local v19    # "verticalGravity":I
    .restart local v20    # "viewHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v14, v2, v3

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v14, v2, v3

    goto/16 :goto_0

    .end local v18    # "titleText":Ljava/lang/String;
    .restart local v11    # "iconHeight":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, "widhtMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, "height":I
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    if-le v7, v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    :cond_0
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    if-le v7, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, "iconHeight":I
    if-le v3, v1, :cond_2

    move v1, v3

    .end local v3    # "iconHeight":I
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    .local v0, "clearBtnHeight":I
    if-le v0, v1, :cond_3

    move v1, v0

    .end local v0    # "clearBtnHeight":I
    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .local v4, "switchBtnHeight":I
    if-le v4, v1, :cond_4

    move v1, v4

    .end local v4    # "switchBtnHeight":I
    :cond_4
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, p1, v7}, Landroid/widget/EditText;->onMeasure(II)V

    return-void
.end method

.method public onPwdVisibleSwitch()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getInputType()I

    move-result v0

    .local v0, "inputType":I
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v1

    .local v1, "isPassword":Z
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v2

    .local v2, "isVisiblePassword":Z
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/16 v3, 0x91

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    :cond_0
    const/4 v8, 0x0

    .local v8, "switchBtnLeft":I
    const/4 v9, 0x0

    .local v9, "switchBtnRight":I
    const/4 v10, 0x0

    .local v10, "switchBtnTop":I
    const/4 v7, 0x0

    .local v7, "switchBtnBottom":I
    const/4 v6, 0x0

    .local v6, "pwdSwitchWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v11

    .local v11, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v5

    .local v5, "height":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v8, v11, v12

    move v9, v11

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int v12, v5, v12

    div-int/lit8 v10, v12, 0x2

    add-int v7, v10, v5

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    :cond_1
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v12, v11, v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    sub-int v2, v12, v6

    .local v2, "clearBtnLeft":I
    sub-int v3, v11, v6

    .local v3, "clearBtnRight":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int v12, v5, v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .local v4, "clearBtnTop":I
    add-int v12, v4, v5

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int v1, v12, v13

    .local v1, "clearBtnBottom":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .end local v1    # "clearBtnBottom":I
    .end local v2    # "clearBtnLeft":I
    .end local v3    # "clearBtnRight":I
    .end local v4    # "clearBtnTop":I
    .end local v5    # "height":I
    .end local v6    # "pwdSwitchWidth":I
    .end local v7    # "switchBtnBottom":I
    .end local v8    # "switchBtnLeft":I
    .end local v9    # "switchBtnRight":I
    .end local v10    # "switchBtnTop":I
    .end local v11    # "width":I
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    :goto_2
    return v12

    .restart local v5    # "height":I
    .restart local v6    # "pwdSwitchWidth":I
    .restart local v7    # "switchBtnBottom":I
    .restart local v8    # "switchBtnLeft":I
    .restart local v9    # "switchBtnRight":I
    .restart local v10    # "switchBtnTop":I
    .restart local v11    # "width":I
    :cond_3
    iget v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    sub-int v2, v11, v12

    .restart local v2    # "clearBtnLeft":I
    move v3, v11

    .restart local v3    # "clearBtnRight":I
    iget v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    sub-int v12, v5, v12

    div-int/lit8 v4, v12, 0x2

    .restart local v4    # "clearBtnTop":I
    iget v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    add-int v1, v4, v12

    .restart local v1    # "clearBtnBottom":I
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v13, v3

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v2, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v13, v1

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v4, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v13, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v8, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v10, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :pswitch_2
    iget-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    if-eqz v12, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v13, v3

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v2, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v13, v1

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v4, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->onClearText()V

    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_6
    iget-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    if-eqz v12, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    int-to-float v13, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v8, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    sub-int v13, v10, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-interface {v12}, Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;->onClear()Z

    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :pswitch_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_1
    return-void
.end method

.method public setClearText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureClearArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_0
    return-void
.end method

.method public setClearTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClearTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    return-void
.end method

.method public setClearTextPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setClearTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    :cond_0
    return-void
.end method
