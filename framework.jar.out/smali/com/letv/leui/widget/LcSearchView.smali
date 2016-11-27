.class public Lcom/letv/leui/widget/LcSearchView;
.super Landroid/widget/LinearLayout;
.source "LcSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;,
        Lcom/letv/leui/widget/LcSearchView$SearchEditText;,
        Lcom/letv/leui/widget/LcSearchView$OnCancelListener;,
        Lcom/letv/leui/widget/LcSearchView$OnClearListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ICON_COLOR:I = -0x595852

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final PREFERRED_WIDTH:I

.field private mAlwaysShowCancel:Z

.field private mCancelBaseline:F

.field private mCancelText:Ljava/lang/CharSequence;

.field private mCancelTextColor:Landroid/content/res/ColorStateList;

.field private mCancelTextWidth:F

.field private mClearingFocus:Z

.field private mCursorColor:I

.field private mEditorTextView:Landroid/widget/EditText;

.field private mFocusColor:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mIconClear:Landroid/graphics/drawable/Drawable;

.field private mIconClearColor:Landroid/content/res/ColorStateList;

.field private mIconSearch:Landroid/graphics/drawable/Drawable;

.field private mIconSearchColor:Landroid/content/res/ColorStateList;

.field private mIsSearchIconVisible:Z

.field private mMaxWidth:I

.field private mNormalColor:I

.field private mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

.field private mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mPaddingHorizontal:I

.field private mPaddingHorizontalLeft:I

.field private final mPaddingVertical:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextChangerListener:Landroid/text/TextWatcher;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUnderlineColor:Landroid/content/res/ColorStateList;

.field private final mUnderlineHeight:I

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private final mWidgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/widget/LcSearchView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 116
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/16 v19, 0x140

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->PREFERRED_WIDTH:I

    .line 62
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$1;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 68
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    .line 73
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    .line 77
    const v19, -0x393835

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    .line 92
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 776
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$3;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 800
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$4;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 117
    const v19, 0x800033

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setGravity(I)V

    .line 118
    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 121
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 122
    .local v8, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 125
    new-instance v19, Landroid/text/TextPaint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 129
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 130
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    .line 131
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    .line 132
    const/16 v19, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    .line 133
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    .line 135
    const v19, 0x1080546

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    .line 136
    const v19, 0x1080545

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    .line 137
    new-instance v19, Landroid/widget/EditText;

    const/16 v20, 0x0

    const v21, 0x1010084

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x106011a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    .line 142
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 143
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    .line 144
    .local v18, "theme":Landroid/content/res/Resources$Theme;
    const v19, 0x1010435

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 145
    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    .line 148
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->FOCUSED_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    move/from16 v23, v0

    aput v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    move/from16 v23, v0

    aput v23, v21, v22

    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    .line 150
    const/4 v13, -0x1

    .line 151
    .local v13, "maxWidth":I
    const/4 v10, -0x1

    .line 152
    .local v10, "imeOptions":I
    const/4 v11, -0x1

    .line 153
    .local v11, "inputType":I
    const/4 v9, 0x1

    .line 154
    .local v9, "focusable":Z
    const v19, -0x595852

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 155
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 158
    const/16 v19, 0x2

    const/high16 v20, 0x41700000    # 15.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 159
    .local v12, "mTextSize":I
    const/high16 v19, -0x1000000

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 160
    const v19, -0x393835

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 161
    const/high16 v6, -0x1000000

    .line 163
    .local v6, "cancelColor":I
    sget-object v19, Lcom/android/internal/R$styleable;->LcSearchView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 166
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 168
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 169
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 172
    :cond_1
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 173
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 176
    :cond_2
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 177
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 180
    :cond_3
    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 181
    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 184
    :cond_4
    const/16 v19, 0x1f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 185
    const/16 v19, 0x1f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 187
    :cond_5
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 188
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    .line 191
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 192
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 193
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 196
    :cond_7
    const/16 v19, 0x21

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    .line 198
    const/16 v19, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    .line 199
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 200
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 201
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 203
    const/16 v19, 0x1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    .line 205
    const/16 v19, 0x19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 206
    const/16 v19, 0x19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    .line 209
    :cond_8
    const/16 v19, 0x1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    .line 210
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x4c000000    # 3.3554432E7f

    const v24, 0xffffff

    and-int v24, v24, v6

    or-int v23, v23, v24

    aput v23, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->setSingleLine()V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string v20, "helve-neue-normal"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/letv/leui/text/LeTextInterface;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/letv/leui/text/LeTextInterface;->setCurcorColor(I)V

    .line 226
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/letv/leui/widget/LcSearchView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$2;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 238
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setGravity(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LcSearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 254
    const/16 v19, 0x2

    const/high16 v20, 0x41700000    # 15.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 255
    .local v7, "cancelTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setColor(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    const-string v20, "helve-neue-regular"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 258
    const/high16 v19, 0x1040000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->descent()F

    move-result v20

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->ascent()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelBaseline:F

    .line 262
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_a

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/widget/LcSearchView;->setMaxWidth(I)V

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 270
    :cond_b
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LcSearchView;->setImeOptions(I)V

    .line 273
    :cond_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_d

    .line 274
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/LcSearchView;->setInputType(I)V

    .line 277
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/letv/leui/widget/LcSearchView;->setFocusable(Z)V

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->updateHintText()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setPadding(Z)V

    .line 281
    return-void

    .line 155
    nop

    :array_0
    .array-data 4
        0x4ca6a7ae    # 8.7375216E7f
        -0x595852
    .end array-data
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LcSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LcSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LcSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LcSearchView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->setPadding(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method private dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 4
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "value"    # I

    .prologue
    .line 288
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCancelTextWidth()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    return v0
.end method

.method private getPreferredWidth()I
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x1

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelClicked()V
    .locals 3

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "hanled":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LcSearchView$OnCancelListener;->onCancel()Z

    move-result v0

    .line 758
    :cond_0
    if-nez v0, :cond_1

    .line 759
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 760
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->clearFocus()V

    .line 762
    :cond_1
    return-void
.end method

.method private onClearClicked()V
    .locals 2

    .prologue
    .line 742
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 743
    .local v0, "text":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 744
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    if-eqz v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LcSearchView$OnClearListener;->onClear()Z

    .line 749
    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateButtonState()V

    .line 714
    return-void
.end method

.method private onTouchAreaDetected(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 313
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 314
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 315
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v5

    .line 316
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v1

    .line 317
    .local v1, "height":I
    iget v10, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v4, v5, v10

    .line 319
    .local v4, "lineEndPosX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 320
    int-to-float v10, v4

    iget v11, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v11, v11

    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v12

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v4, v10

    .line 323
    :cond_0
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v4, v10

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gez v10, :cond_4

    int-to-float v10, v4

    cmpg-float v10, v6, v10

    if-gez v10, :cond_4

    move v3, v9

    .line 324
    .local v3, "isInClearArea":Z
    :goto_0
    int-to-float v10, v4

    cmpg-float v10, v10, v6

    if-gez v10, :cond_5

    int-to-float v10, v5

    cmpg-float v10, v6, v10

    if-gez v10, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v10

    if-eqz v10, :cond_5

    move v2, v9

    .line 326
    .local v2, "isInCancelArea":Z
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 357
    :cond_1
    :goto_2
    :pswitch_0
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    move v8, v9

    :cond_3
    return v8

    .end local v2    # "isInCancelArea":Z
    .end local v3    # "isInClearArea":Z
    :cond_4
    move v3, v8

    .line 323
    goto :goto_0

    .restart local v3    # "isInClearArea":Z
    :cond_5
    move v2, v8

    .line 324
    goto :goto_1

    .line 328
    .restart local v2    # "isInCancelArea":Z
    :pswitch_1
    if-eqz v3, :cond_6

    .line 329
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    sget-object v12, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const v13, -0x595852

    invoke-virtual {v11, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 330
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10, v8, v4, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    .line 332
    :cond_6
    if-eqz v2, :cond_1

    .line 333
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    sget-object v12, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const/high16 v13, -0x1000000

    invoke-virtual {v11, v12, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    invoke-virtual {p0, v4, v8, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto :goto_2

    .line 338
    :pswitch_2
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 339
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 340
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10, v8, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto :goto_2

    .line 343
    :pswitch_3
    if-eqz v3, :cond_7

    .line 344
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->onClearClicked()V

    .line 346
    :cond_7
    if-eqz v2, :cond_8

    .line 347
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->onCancelClicked()V

    .line 349
    :cond_8
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 350
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 351
    iget-object v10, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10, v8, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto/16 :goto_2

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method private setPadding(Z)V
    .locals 8
    .param p1, "isShowCancel"    # Z

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "searchIconWidth":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 296
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v1, v1

    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    add-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/letv/leui/widget/LcSearchView;->setPadding(IIII)V

    .line 299
    return-void

    .line 296
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateButtonState()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method private updateFocusedState()V
    .locals 2

    .prologue
    .line 690
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    .line 693
    .local v0, "focused":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->invalidate()V

    .line 694
    return-void
.end method

.method private updateHintText()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    .line 507
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LcSearchView;->setImeVisibility(Z)V

    .line 508
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 509
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 510
    iput-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    .line 511
    return-void
.end method

.method public getClearIconColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "create"    # Z

    .prologue
    .line 560
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchIconColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnderlineWidth()F
    .locals 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v1

    .line 405
    .local v1, "width":I
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    sub-int v0, v2, v3

    .line 406
    .local v0, "lineWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    int-to-float v2, v0

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 409
    :cond_0
    int-to-float v2, v0

    return v2
.end method

.method public isShowCancel()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 498
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 499
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 362
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v16

    .line 365
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v13

    .line 366
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 368
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v13, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v14, v16, v1

    .line 374
    .local v14, "lineEndPosX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 377
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    add-int/2addr v1, v14

    int-to-float v5, v1

    .line 378
    .local v5, "x":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelBaseline:F

    .line 379
    .local v6, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 381
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    sub-int v1, v13, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    sub-int v15, v1, v2

    .line 383
    .local v15, "linePosY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    int-to-float v8, v1

    int-to-float v9, v15

    int-to-float v10, v14

    int-to-float v11, v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v14, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v13, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 393
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 766
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 767
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 768
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 772
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 773
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 774
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 436
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 438
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 460
    :cond_0
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 461
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 463
    return-void

    .line 442
    :sswitch_0
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 443
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 447
    goto :goto_0

    .line 451
    :sswitch_1
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_0

    .line 452
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 457
    :sswitch_2
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    .line 438
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onTextFocusChanged()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateButtonState()V

    .line 701
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->postUpdateFocusedState()V

    .line 702
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->onTouchAreaDetected(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 308
    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 492
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->postUpdateFocusedState()V

    .line 493
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 480
    iget-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    if-eqz v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 486
    .local v0, "result":Z
    goto :goto_0
.end method

.method public requestQueryTextFocus()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setClearIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 674
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->setClearIconColor(Landroid/content/res/ColorStateList;)V

    .line 675
    return-void
.end method

.method public setClearIconColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 679
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 572
    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 654
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 658
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 594
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    .line 418
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->requestLayout()V

    .line 419
    return-void
.end method

.method public setOnCancelListener(Lcom/letv/leui/widget/LcSearchView$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    .line 529
    return-void
.end method

.method public setOnClearListener(Lcom/letv/leui/widget/LcSearchView$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    .line 520
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 557
    return-void
.end method

.method public setOnSuggestionListener(Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;

    .prologue
    .line 44
    return-void
.end method

.method public setOnTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;

    .line 538
    return-void
.end method

.method public setOnTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 547
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 614
    return-void

    .line 612
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 633
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateHintText()V

    .line 634
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 890
    return-void
.end method

.method public setSearchIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 661
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->setSearchIconColor(Landroid/content/res/ColorStateList;)V

    .line 662
    return-void
.end method

.method public setSearchIconColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 666
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->invalidate()V

    .line 667
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 0
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 883
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 897
    return-void
.end method
