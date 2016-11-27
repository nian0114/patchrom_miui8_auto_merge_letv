.class public Lcom/letv/leui/widget/LeActivationEditText;
.super Landroid/widget/LinearLayout;
.source "LeActivationEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;,
        Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;
    }
.end annotation


# static fields
.field private static final FOCUS_NEXT:I = 0x1

.field private static final FOCUS_PREV:I = -0x1

.field private static final FOCUS_PREV_AND_DELETE:I = -0x1

.field private static final FOCUS_STAY:I


# instance fields
.field private imeOptions:I

.field private inputType:I

.field private mActivationTextLength:I

.field private mAvaliableInputWidth:I

.field private mBtnClear:Landroid/widget/ImageView;

.field private mBtnClearMeasureWidth:I

.field private mCacheThreshold:I

.field private mCurrentEditTextId:I

.field private final mEditTextCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFontFamily:Ljava/lang/String;

.field private mInputBuffer:Ljava/lang/StringBuffer;

.field private mInputInnerMargin:I

.field private mInputMargin:I

.field private mInputTextColor:I

.field private mInputTextPaddingBottom:I

.field private mInputTextSize:I

.field private mIsTextClearing:Z

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mPerInputWidth:I

.field private mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

.field private mTextTypeFace:Landroid/graphics/Typeface;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextColor:I

.field private mTitleTextSize:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWordsBgResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeActivationEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeActivationEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v5, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    iput v9, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCacheThreshold:I

    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    const v4, 0x1040620

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    const v4, 0x10501a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    const v4, 0x10501a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    const v4, 0x10501a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    const v4, 0x10e00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    const v4, 0x1060120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    const v4, 0x10501a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    const v4, 0x1060121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    const v4, 0x10501a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    const v4, 0x10804ed

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    const v4, 0x1080525

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "imageClearSrc":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/internal/R$styleable;->LeActivationEditText:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    :cond_0
    const/16 v4, 0xa

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    const/16 v4, 0x9

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    const/16 v4, 0xb

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    const/16 v4, 0xc

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    const/4 v4, 0x3

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    const/4 v4, 0x5

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    const/4 v4, 0x7

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    const/16 v4, 0xd

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeActivationEditText;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClearMeasureWidth:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeActivationEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeActivationEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LeActivationEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActivationEditText;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    return v0
.end method

.method private clearTextAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    check-cast v0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    .end local v0    # "view":Landroid/view/View;
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getCacheEditText()Landroid/widget/EditText;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "cacheSize":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "editText":Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .restart local v1    # "editText":Landroid/widget/EditText;
    :cond_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    .end local v1    # "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;-><init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;)V

    .restart local v1    # "editText":Landroid/widget/EditText;
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private moveInputFocus(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->clearTextAtIndex(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void

    .end local v0    # "view":Landroid/view/View;
    :cond_3
    if-gez p2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    goto :goto_0
.end method

.method private recycle(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCacheThreshold:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeAllEditTextViews()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getChildCount()I

    move-result v1

    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "view":Landroid/view/View;
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeActivationEditText;->recycle(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->removeViewAt(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->removeViewAt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public clearAllText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->clearTextAtIndex(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    const-string v1, ""

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;->onTextChange(Ljava/lang/String;)V

    :cond_1
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->clearAllText()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureHeight:I

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .local v0, "titleTextWidth":I
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClearMeasureWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->setActivitionTextLength(I)V

    .end local v0    # "titleTextWidth":I
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureHeight:I

    iget v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeActivationEditText;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivitionTextLength(I)V
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    iget v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .local v0, "avaliableInputWidth":I
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    .local v4, "perTextWidth":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "editText":Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeActivationEditText;->removeAllEditTextViews()V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_4

    invoke-direct {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getCacheEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez v2, :cond_2

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    add-int/lit8 v5, p1, -0x1

    if-ne v2, v5, :cond_3

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_3
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    invoke-virtual {v1, v7, v7, v7, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "perTextWidth":I
    :cond_1
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    div-int v4, v5, p1

    goto :goto_0

    .restart local v1    # "editText":Landroid/widget/EditText;
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "perTextWidth":I
    :cond_2
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_3
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-lez p1, :cond_5

    iput v7, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setOnTextChangeListener(Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->clearAllText()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
