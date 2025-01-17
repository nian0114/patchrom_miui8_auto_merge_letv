.class public Lcom/letv/leui/widget/LeTitleEditText;
.super Landroid/widget/LinearLayout;
.source "LeTitleEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTitleEditText$SavedState;,
        Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;,
        Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClearButton:Landroid/widget/ImageView;

.field private mClearingFocus:Z

.field private mContentHint:Ljava/lang/CharSequence;

.field private final mEditImageRight:Landroid/widget/ImageView;

.field private final mEditImageTitle:Landroid/widget/ImageView;

.field private mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

.field private mEditTextTitle:Landroid/widget/TextView;

.field private mIsStopKeyBackIfNeed:Z

.field private mMaxWidth:I

.field private mOnClearListener:Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRightImageClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/CharSequence;

.field private mTextChangerListener:Landroid/text/TextWatcher;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mViewFrame:Landroid/view/View;

.field private final mViewPlate:Landroid/view/View;

.field private showPwdVisibleSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/widget/LeTitleEditText;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTitleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTitleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 59
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v56, Lcom/letv/leui/widget/LeTitleEditText$1;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$1;-><init>(Lcom/letv/leui/widget/LeTitleEditText;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mIsStopKeyBackIfNeed:Z

    new-instance v56, Lcom/letv/leui/widget/LeTitleEditText$3;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$3;-><init>(Lcom/letv/leui/widget/LeTitleEditText;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v56, Lcom/letv/leui/widget/LeTitleEditText$4;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$4;-><init>(Lcom/letv/leui/widget/LeTitleEditText;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v56, Lcom/letv/leui/widget/LeTitleEditText$5;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$5;-><init>(Lcom/letv/leui/widget/LeTitleEditText;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mTextWatcher:Landroid/text/TextWatcher;

    const-string v56, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/LayoutInflater;

    .local v29, "inflater":Landroid/view/LayoutInflater;
    const v56, 0x10900b5

    const/16 v57, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v56

    move-object/from16 v2, p0

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v56, 0x102044b

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mViewFrame:Landroid/view/View;

    const v56, 0x102044e

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mViewPlate:Landroid/view/View;

    const v56, 0x102044c

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    const v56, 0x102044d

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/ImageView;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    const v56, 0x102044f

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    const v56, 0x1020450

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/ImageView;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    const v56, 0x1020451

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/ImageView;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setEditTextView(Lcom/letv/leui/widget/LeTitleEditText;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    new-instance v57, Lcom/letv/leui/widget/LeTitleEditText$2;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$2;-><init>(Lcom/letv/leui/widget/LeTitleEditText;)V

    invoke-virtual/range {v56 .. v57}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v35, -0x1

    .local v35, "maxWidth":I
    const/16 v40, 0x0

    .local v40, "textHint":Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .local v41, "textTitle":Ljava/lang/CharSequence;
    const v9, 0x1080525

    .local v9, "clearImageId":I
    const v39, 0x108053e

    .local v39, "searchBgId":I
    const/high16 v43, -0x80000000

    .local v43, "titleImageId":I
    const/16 v28, -0x1

    .local v28, "imeOptions":I
    const/16 v30, -0x1

    .local v30, "inputType":I
    const/4 v15, 0x1

    .local v15, "focusable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .local v37, "res":Landroid/content/res/Resources;
    const/16 v45, 0x0

    .local v45, "titleMarginLeft":I
    const v56, 0x1050160

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    .local v46, "titleMarginRight":I
    const v56, 0x1050160

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v47

    .local v47, "titleMarginTop":I
    const v56, 0x1050160

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    .local v44, "titleMarginBottom":I
    const/16 v49, 0x0

    .local v49, "titlePaddingLeft":I
    const/16 v50, 0x0

    .local v50, "titlePaddingRight":I
    const/16 v51, 0x0

    .local v51, "titlePaddingTop":I
    const/16 v48, 0x0

    .local v48, "titlePaddingBottom":I
    const/16 v55, -0x2

    .local v55, "titleWidth":I
    const/16 v42, -0x2

    .local v42, "titleHeight":I
    const/16 v19, 0x0

    .local v19, "imageRightMarginLeft":I
    const/16 v20, 0x0

    .local v20, "imageRightMarginRight":I
    const/16 v21, 0x0

    .local v21, "imageRightMarginTop":I
    const/16 v18, 0x0

    .local v18, "imageRightMarginBottom":I
    const v56, 0x1050160

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .local v23, "imageRightPaddingLeft":I
    const/16 v24, 0x0

    .local v24, "imageRightPaddingRight":I
    const/16 v25, 0x0

    .local v25, "imageRightPaddingTop":I
    const/16 v22, 0x0

    .local v22, "imageRightPaddingBottom":I
    const/high16 v27, -0x80000000

    .local v27, "imageRightWidth":I
    const/high16 v17, -0x80000000

    .local v17, "imageRightHeight":I
    const/high16 v26, -0x80000000

    .local v26, "imageRightSrcId":I
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    const v56, 0x1050159

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v54

    .local v54, "titleTextSize":I
    const v56, 0x10600fa

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v53

    .local v53, "titleTextColor":Landroid/content/res/ColorStateList;
    const/high16 v12, -0x80000000

    .local v12, "editorHeight":I
    const/high16 v14, -0x80000000

    .local v14, "editorWidth":I
    const v56, 0x1050159

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .local v11, "editTextSize":I
    const v56, 0x10600f7

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .local v10, "editTextColor":Landroid/content/res/ColorStateList;
    const v56, 0x10600f8

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .local v16, "hintTextColor":Landroid/content/res/ColorStateList;
    const v56, 0x105015a

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .local v8, "clearIconSize":I
    const v56, 0x105015b

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .local v7, "clearIconPadding":I
    const v56, 0x105015c

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v32

    .local v32, "marginLeft":I
    const v56, 0x105015d

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    .local v33, "marginRight":I
    const v56, 0x105015e

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    .local v34, "marginTop":I
    const v56, 0x105015f

    move-object/from16 v0, v37

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .local v31, "marginBottom":I
    sget-object v56, Lcom/android/internal/R$styleable;->LeTitleEditText:[I

    const/16 v57, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v56

    move/from16 v3, p3

    move/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v56, 0x6

    move/from16 v0, v56

    move/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v43

    const/16 v56, 0x12

    move/from16 v0, v56

    move/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v42

    const/16 v56, 0x13

    move/from16 v0, v56

    move/from16 v1, v55

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v55

    const/16 v56, 0xa

    move/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v45

    const/16 v56, 0xb

    move/from16 v0, v56

    move/from16 v1, v46

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v46

    const/16 v56, 0xc

    move/from16 v0, v56

    move/from16 v1, v47

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v47

    const/16 v56, 0xd

    move/from16 v0, v56

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v44

    const/16 v56, 0xe

    move/from16 v0, v56

    move/from16 v1, v49

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    const/16 v56, 0xf

    move/from16 v0, v56

    move/from16 v1, v50

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v50

    const/16 v56, 0x10

    move/from16 v0, v56

    move/from16 v1, v51

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    const/16 v56, 0x11

    move/from16 v0, v56

    move/from16 v1, v48

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v48

    const/16 v56, 0x1e

    move/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    const/16 v56, 0x1c

    move/from16 v0, v56

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    const/16 v56, 0x1d

    move/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    const/16 v56, 0x14

    move/from16 v0, v56

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    const/16 v56, 0x15

    move/from16 v0, v56

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    const/16 v56, 0x16

    move/from16 v0, v56

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    const/16 v56, 0x17

    move/from16 v0, v56

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    const/16 v56, 0x18

    move/from16 v0, v56

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    const/16 v56, 0x19

    move/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    const/16 v56, 0x1a

    move/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    const/16 v56, 0x1b

    move/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    const/16 v56, 0x1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    const/16 v56, 0x7

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    const/16 v56, 0x8

    move/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v54

    const/16 v56, 0x9

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v56

    if-eqz v56, :cond_0

    const/16 v56, 0x9

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v53

    :cond_0
    const/16 v56, 0x22

    move/from16 v0, v56

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    const/16 v56, 0x23

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v56

    if-eqz v56, :cond_1

    const/16 v56, 0x23

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_1
    const/16 v56, 0x24

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v56

    if-eqz v56, :cond_2

    const/16 v56, 0x24

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    :cond_2
    const/16 v56, 0x25

    move/from16 v0, v56

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/16 v56, 0x26

    move/from16 v0, v56

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/16 v56, 0x2b

    move/from16 v0, v56

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    const/16 v56, 0x28

    move/from16 v0, v56

    move/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v32

    const/16 v56, 0x29

    move/from16 v0, v56

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v33

    const/16 v56, 0x2a

    move/from16 v0, v56

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v34

    const/16 v56, 0x20

    move/from16 v0, v56

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/16 v56, 0x21

    move/from16 v0, v56

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    const/16 v56, 0x1

    move/from16 v0, v56

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v35

    const/16 v56, 0x2c

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v40

    const/16 v56, 0x5

    move/from16 v0, v56

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v56, 0x4

    move/from16 v0, v56

    move/from16 v1, v39

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v39

    const/16 v56, 0x3

    move/from16 v0, v56

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    const/16 v56, 0x2

    move/from16 v0, v56

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    const/16 v56, 0x0

    move/from16 v0, v56

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v52

    check-cast v52, Landroid/widget/LinearLayout$LayoutParams;

    .local v52, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v56, -0x80000000

    move/from16 v0, v43

    move/from16 v1, v56

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v52

    .end local v52    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v52, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v52    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/high16 v56, -0x80000000

    move/from16 v0, v42

    move/from16 v1, v56

    if-eq v0, v1, :cond_4

    move/from16 v0, v55

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_4
    const/high16 v56, -0x80000000

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_5

    move/from16 v0, v42

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v49

    move/from16 v2, v51

    move/from16 v3, v50

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v0, v47

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v44

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v45

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v46

    move-object/from16 v1, v52

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v58, v0

    invoke-virtual/range {v56 .. v58}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .local v6, "clearBtnParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .local v13, "editorParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v56, -0x80000000

    move/from16 v0, v56

    if-eq v12, v0, :cond_6

    iput v12, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_6
    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v56, v0

    const/high16 v57, -0x80000000

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_7

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    int-to-float v0, v11

    move/from16 v58, v0

    invoke-virtual/range {v56 .. v58}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setMinHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mViewPlate:Landroid/view/View;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mViewFrame:Landroid/view/View;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout$LayoutParams;

    .local v36, "plateParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v34

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v31

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v32

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v33

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout$LayoutParams;

    .local v38, "rightImageParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v27

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, v17

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, v21

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v18

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v19

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v20

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v56, -0x1

    move/from16 v0, v35

    move/from16 v1, v56

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setMaxWidth(I)V

    :cond_8
    const/high16 v56, -0x80000000

    move/from16 v0, v43

    move/from16 v1, v56

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setTitleIcon(I)V

    :goto_0
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-nez v56, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setHintText(Ljava/lang/CharSequence;)V

    :cond_9
    const/16 v56, -0x1

    move/from16 v0, v28

    move/from16 v1, v56

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setImeOptions(I)V

    :cond_a
    const/high16 v56, -0x80000000

    move/from16 v0, v26

    move/from16 v1, v56

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setImageRightSrc(I)V

    :cond_b
    const/16 v56, -0x1

    move/from16 v0, v30

    move/from16 v1, v56

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/letv/leui/widget/LeTitleEditText;->setFocusable(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditText;->updateHintText()V

    return-void

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->onClearText()V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeTitleEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->onPwdVisibleSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/LeTitleEditText;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeTitleEditText;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTitleEditText;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
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

.method private static isPasswordInputType(I)Z
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

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    and-int/lit16 v0, p0, 0xfff

    .local v0, "variation":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onClearText()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;->onClear()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->hideControllers()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onPwdVisibleSwitch()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getInputType()I

    move-result v0

    .local v0, "inputType":I
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->isPasswordInputType(I)Z

    move-result v1

    .local v1, "isPassword":Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->isVisiblePasswordInputType(I)Z

    move-result v2

    .local v2, "isVisiblePassword":Z
    if-eqz v1, :cond_1

    const/16 v3, 0x91

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTitleEditText;->setInputType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_0

    const/16 v3, 0x81

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTitleEditText;->setInputType(I)V

    goto :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->updateButtonState()V

    return-void
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageRightSrc(I)V
    .locals 2
    .param p1, "imageRightSrcId"    # I

    .prologue
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private updateButtonState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .local v1, "hasText":Z
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->hasFocus()Z

    move-result v0

    .local v0, "hasFocus":Z
    iget-object v5, p0, Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .end local v0    # "hasFocus":Z
    .end local v1    # "hasText":Z
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v0    # "hasFocus":Z
    .restart local v1    # "hasText":Z
    :cond_1
    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->hasFocus()Z

    move-result v0

    .local v0, "focused":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mViewPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/letv/leui/widget/LeTitleEditText;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->invalidate()V

    return-void

    :cond_0
    sget-object v1, Lcom/letv/leui/widget/LeTitleEditText;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private updateHintText()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mContentHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mContentHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mClearingFocus:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->clearFocus()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mClearingFocus:Z

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getEditText()Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mContentHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mContentHint:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :sswitch_0
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    if-lez v2, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getPreferredWidth()I

    move-result v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;

    .local v0, "ss":Lcom/letv/leui/widget/LeTitleEditText$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->showPwdVisibleSwitch:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    iget v1, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->maxWidth:I

    iput v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    iget-object v1, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->text:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeTitleEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Lcom/letv/leui/widget/LeTitleEditText$SavedState;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->showPwdVisibleSwitch:Z

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    iput v2, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->maxWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/widget/LeTitleEditText$SavedState;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method onTextFocusChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->updateButtonState()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->postUpdateFocusedState()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mClearingFocus:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v1, p1, p2}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mContentHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditText;->updateHintText()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 6
    .param p1, "inputType"    # I

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setInputType(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    const-string v4, "helve-neue"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/letv/leui/widget/LeTitleEditText;->isPasswordInputType(I)Z

    move-result v0

    .local v0, "isPassword":Z
    invoke-static {p1}, Lcom/letv/leui/widget/LeTitleEditText;->isVisiblePasswordInputType(I)Z

    move-result v1

    .local v1, "isVisiblePassword":Z
    if-eqz v0, :cond_3

    const v3, 0x10805d2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditText;->setImageRightSrc(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setSelection(I)V

    goto :goto_0

    .end local v2    # "length":I
    :cond_3
    if-eqz v1, :cond_2

    const v3, 0x10805d3

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditText;->setImageRightSrc(I)V

    goto :goto_1
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mMaxWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText;->requestLayout()V

    return-void
.end method

.method public setOnClearListener(Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditText$OnClearListener;

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setOnRightImageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mRightImageClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;

    return-void
.end method

.method public setOnTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditText:Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->setSelection(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleIcon(I)V
    .locals 2
    .param p1, "imageId"    # I

    .prologue
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditImageTitle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText;->mEditTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public stopKeyBackIfNeed(Z)V
    .locals 0
    .param p1, "isStopKeyBackIfNeed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeTitleEditText;->mIsStopKeyBackIfNeed:Z

    return-void
.end method
