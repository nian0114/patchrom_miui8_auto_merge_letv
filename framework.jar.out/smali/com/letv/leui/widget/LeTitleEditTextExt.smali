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
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    .line 50
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 56
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    .line 736
    new-instance v17, Lcom/letv/leui/widget/LeTitleEditTextExt$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt$1;-><init>(Lcom/letv/leui/widget/LeTitleEditTextExt;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 78
    .local v13, "res":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 80
    .local v8, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    const v18, 0x106000d

    invoke-direct/range {v17 .. v18}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 82
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

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 84
    const/4 v10, -0x1

    .line 86
    .local v10, "inputType":I
    new-instance v17, Landroid/text/TextPaint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    .line 87
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

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 90
    const/4 v15, 0x0

    .line 92
    .local v15, "titleText":Ljava/lang/CharSequence;
    const v17, 0x105015a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 93
    .local v16, "titleTextSize":I
    const v17, 0x10600fb

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    .line 94
    const v17, 0x1080540

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
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

    .line 96
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    .line 97
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    .line 98
    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    .line 101
    const v17, 0x1060120

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mColorActivated:I

    .line 102
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v12, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 104
    .local v14, "theme":Landroid/content/res/Resources$Theme;
    const v17, 0x101042a

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v12, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 105
    iget v0, v12, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mColorActivated:I

    .line 108
    :cond_0
    const v7, -0x595852

    .line 109
    .local v7, "colorNormal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 110
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

    .line 112
    sget-object v17, Lcom/android/internal/R$styleable;->LeTitleEditText:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 113
    .local v5, "a":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_2

    .line 114
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 116
    .local v11, "n":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_2

    .line 117
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 119
    .local v6, "attr":I
    sparse-switch v6, :sswitch_data_0

    .line 116
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 121
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

    .line 125
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

    .line 129
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

    .line 133
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

    .line 137
    :sswitch_4
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 141
    :sswitch_5
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 142
    goto :goto_1

    .line 145
    :sswitch_6
    move/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 146
    goto :goto_1

    .line 149
    :sswitch_7
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 153
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

    .line 157
    :sswitch_9
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 161
    :sswitch_a
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .line 164
    :sswitch_b
    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 165
    goto/16 :goto_1

    .line 167
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

    .line 168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 169
    const v17, 0x1080526

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 172
    :sswitch_d
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .line 177
    .end local v6    # "attr":I
    .end local v9    # "i":I
    .end local v11    # "n":I
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    .line 188
    if-eqz v15, :cond_3

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 193
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

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 197
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

    .line 200
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    :cond_6
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

    .line 206
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setIncludeFontPadding(Z)V

    .line 208
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    .line 209
    and-int/lit16 v0, v10, 0xfff

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setInputType(I)V

    .line 215
    :cond_8
    return-void

    .line 119
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
    .line 27
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    return v0
.end method

.method private internalInputTypeSet(I)V
    .locals 6
    .param p1, "inputType"    # I

    .prologue
    const/4 v5, 0x1

    .line 223
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    const-string v3, "helve-neue"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    if-nez v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v0

    .line 231
    .local v0, "isPassword":Z
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v1

    .line 233
    .local v1, "isVisiblePassword":Z
    if-eqz v0, :cond_4

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/letv/leui/widget/LeTitleEditTextExt;->EMPTY_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 237
    :cond_2
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mKeepPwdSwitchShowing:Z

    .line 245
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 246
    .local v2, "length":I
    if-lez v2, :cond_0

    .line 247
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setSelection(I)V

    goto :goto_0

    .line 238
    .end local v2    # "length":I
    :cond_4
    if-eqz v1, :cond_3

    .line 239
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 240
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/letv/leui/widget/LeTitleEditTextExt;->SELECTED_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    :cond_5
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mKeepPwdSwitchShowing:Z

    goto :goto_1
.end method

.method public static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 252
    and-int/lit16 v0, p0, 0xfff

    .line 254
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

    .line 455
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 456
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 458
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

    .line 460
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

    .line 462
    return-void
.end method

.method private measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "titleTextSize"    # F
    .param p3, "titleText"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 445
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 446
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 448
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

    .line 450
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

    .line 452
    return-void
.end method

.method private onClearText()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;->onClear()Z

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setClearDrawable(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    return-void
.end method

.method private setOnClearListener(Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .line 723
    return-void
.end method

.method private setPressState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressing"    # Z

    .prologue
    .line 726
    if-eqz p2, :cond_1

    .line 727
    if-eqz p1, :cond_0

    .line 728
    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    if-eqz p1, :cond_0

    .line 732
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private updateClearTextColors()Z
    .locals 5

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 422
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    .line 423
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    .line 424
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 425
    const/4 v1, 0x1

    .line 427
    :cond_0
    return v1
.end method

.method private updateTitleTextColors()Z
    .locals 5

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 411
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    .line 412
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    .line 413
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 414
    const/4 v1, 0x1

    .line 416
    :cond_0
    return v1
.end method

.method private updateUnderlineColors()Z
    .locals 6

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "inval":Z
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    move v2, v1

    .line 441
    .end local v1    # "inval":Z
    .local v2, "inval":I
    :goto_0
    return v2

    .line 435
    .end local v2    # "inval":I
    .restart local v1    # "inval":Z
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 436
    .local v0, "color":I
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    if-eq v0, v3, :cond_1

    .line 437
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    .line 438
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 441
    .restart local v2    # "inval":I
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 383
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    move-result v2

    or-int/2addr v0, v2

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    move-result v2

    or-int/2addr v0, v2

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v1

    .line 395
    .local v1, "state":[I
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    move-result v2

    or-int/2addr v0, v2

    .line 403
    :cond_3
    if-eqz v0, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 406
    :cond_4
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .line 467
    .local v0, "extraWidth":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 471
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 476
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    .line 477
    .local v0, "extraPadding":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 483
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

    .line 263
    and-int/lit16 v0, p1, 0xfff

    .line 265
    .local v0, "variation":I
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 266
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 266
    goto :goto_0

    .line 268
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
    .line 528
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    .line 531
    .local v15, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 533
    .local v18, "titleText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 535
    .local v13, "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .line 536
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

    .line 538
    .local v14, "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v19, v2, 0x70

    .line 540
    .local v19, "verticalGravity":I
    sparse-switch v19, :sswitch_data_0

    .line 550
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 553
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v18    # "titleText":Ljava/lang/String;
    .end local v19    # "verticalGravity":I
    .end local v20    # "viewHeight":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 556
    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .line 557
    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 558
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

    .line 560
    .restart local v14    # "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v19, v2, 0x70

    .line 562
    .restart local v19    # "verticalGravity":I
    sparse-switch v19, :sswitch_data_1

    .line 571
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 572
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 577
    .end local v11    # "iconHeight":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v19    # "verticalGravity":I
    .end local v20    # "viewHeight":I
    :cond_1
    const/16 v16, 0x0

    .line 578
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

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .line 580
    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 581
    .restart local v11    # "iconHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 582
    .local v12, "iconWidth":I
    move/from16 v16, v12

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v12

    int-to-float v13, v2

    .line 584
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

    .line 587
    .restart local v14    # "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 588
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 593
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

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .line 595
    .restart local v20    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    .line 596
    .restart local v11    # "iconHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 597
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

    .line 598
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

    .line 601
    .restart local v14    # "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 607
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v20    # "viewHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 609
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

    .line 611
    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v20

    .line 612
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

    .line 615
    .restart local v14    # "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 618
    .end local v8    # "clearText":Ljava/lang/String;
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v20    # "viewHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 621
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .line 622
    .local v10, "extraWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v10, :cond_5

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 625
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v17

    .line 626
    .local v17, "strokeWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .line 627
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 629
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

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 635
    .end local v9    # "color":I
    .end local v10    # "extraWidth":I
    .end local v17    # "strokeWidth":F
    :cond_6
    return-void

    .line 542
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

    .line 545
    goto/16 :goto_0

    .line 547
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

    .line 564
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

    .line 566
    goto/16 :goto_1

    .line 568
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

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch

    .line 562
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
    .line 488
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 489
    .local v5, "widhtMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 491
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 492
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 494
    .local v1, "height":I
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    if-le v7, v1, :cond_0

    .line 495
    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    .line 498
    :cond_0
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    if-le v7, v1, :cond_1

    .line 499
    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    .line 502
    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 503
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 504
    .local v3, "iconHeight":I
    if-le v3, v1, :cond_2

    .line 505
    move v1, v3

    .line 509
    .end local v3    # "iconHeight":I
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 510
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    .line 511
    .local v0, "clearBtnHeight":I
    if-le v0, v1, :cond_3

    .line 512
    move v1, v0

    .line 516
    .end local v0    # "clearBtnHeight":I
    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 517
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 518
    .local v4, "switchBtnHeight":I
    if-le v4, v1, :cond_4

    .line 519
    move v1, v4

    .line 522
    .end local v4    # "switchBtnHeight":I
    :cond_4
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, p1, v7}, Landroid/widget/EditText;->onMeasure(II)V

    .line 524
    return-void
.end method

.method public onPwdVisibleSwitch()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    .line 273
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getInputType()I

    move-result v0

    .line 275
    .local v0, "inputType":I
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v1

    .line 276
    .local v1, "isPassword":Z
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v2

    .line 278
    .local v2, "isVisiblePassword":Z
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    if-ne v3, v4, :cond_2

    .line 279
    if-eqz v1, :cond_1

    .line 280
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-eqz v2, :cond_0

    .line 282
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0

    .line 287
    :cond_2
    if-eqz v1, :cond_3

    .line 288
    const/16 v3, 0x91

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0

    .line 289
    :cond_3
    if-eqz v2, :cond_0

    .line 290
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 641
    .local v0, "action":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 643
    :cond_0
    const/4 v8, 0x0

    .local v8, "switchBtnLeft":I
    const/4 v9, 0x0

    .local v9, "switchBtnRight":I
    const/4 v10, 0x0

    .local v10, "switchBtnTop":I
    const/4 v7, 0x0

    .line 644
    .local v7, "switchBtnBottom":I
    const/4 v6, 0x0

    .line 646
    .local v6, "pwdSwitchWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v11

    .line 647
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v5

    .line 648
    .local v5, "height":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 649
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v8, v11, v12

    .line 650
    move v9, v11

    .line 651
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int v12, v5, v12

    div-int/lit8 v10, v12, 0x2

    .line 652
    add-int v7, v10, v5

    .line 653
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 656
    :cond_1
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 658
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v12, v11, v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    sub-int v2, v12, v6

    .line 659
    .local v2, "clearBtnLeft":I
    sub-int v3, v11, v6

    .line 660
    .local v3, "clearBtnRight":I
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int v12, v5, v12

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .line 661
    .local v4, "clearBtnTop":I
    add-int v12, v4, v5

    iget v13, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v13, v13, 0x2

    add-int v1, v12, v13

    .line 669
    .local v1, "clearBtnBottom":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 710
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

    .line 663
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

    .line 664
    .restart local v2    # "clearBtnLeft":I
    move v3, v11

    .line 665
    .restart local v3    # "clearBtnRight":I
    iget v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    sub-int v12, v5, v12

    div-int/lit8 v4, v12, 0x2

    .line 666
    .restart local v4    # "clearBtnTop":I
    iget v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    add-int v1, v4, v12

    .restart local v1    # "clearBtnBottom":I
    goto :goto_0

    .line 671
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

    .line 673
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    .line 674
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    .line 675
    const/4 v12, 0x1

    goto :goto_2

    .line 676
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

    .line 678
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    .line 679
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    .line 680
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 684
    :pswitch_2
    iget-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    if-eqz v12, :cond_6

    .line 685
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

    .line 687
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->onClearText()V

    .line 689
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    .line 690
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    .line 691
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 692
    :cond_6
    iget-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    if-eqz v12, :cond_2

    .line 693
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

    .line 695
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-interface {v12}, Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;->onClear()Z

    .line 697
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    .line 698
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    .line 699
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 703
    :pswitch_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    .line 704
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    .line 705
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchInSwitchArea:Z

    .line 706
    iget-object v12, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPwdSwitchDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setPressState(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_1

    .line 669
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

    .line 299
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 300
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 304
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 306
    :cond_1
    return-void
.end method

.method public setClearText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    .line 310
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    .line 311
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureClearArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 313
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 315
    :cond_0
    return-void
.end method

.method public setClearTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 327
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearTextColor(Landroid/content/res/ColorStateList;)V

    .line 328
    return-void
.end method

.method public setClearTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    .line 332
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    .line 333
    return-void
.end method

.method public setClearTextPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    return-void
.end method

.method public setClearTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 318
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 319
    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 322
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 324
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 218
    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 219
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    .line 220
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 345
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    .line 346
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 349
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 351
    :cond_1
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    .line 355
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    .line 356
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 358
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 361
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 373
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 374
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 378
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    .line 379
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 364
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 365
    iput p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    .line 366
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 368
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 370
    :cond_0
    return-void
.end method
