.class public Lcom/letv/leui/widget/AlphabetWavesView;
.super Landroid/widget/LinearLayout;
.source "AlphabetWavesView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/AlphabetWavesView$4;,
        Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;,
        Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;,
        Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;,
        Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;
    }
.end annotation


# static fields
.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static final POP_LIMIT_NUM:I = 0xa

.field public static final STAR:Ljava/lang/String; = "\u2606"

.field private static final STATE_CHANGE_TEXT:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TOUCH_RECT_LEFT_OFFSET_DIP:I = 0x19

.field private static final mInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final LONGPRESS_TIMEOUT:I

.field private final LONG_SELECT:I

.field private final TAP_TIMEOUT:I

.field private envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

.field private isPoped:Z

.field isSetList:Z

.field private isShowSelected:Z

.field private mAlphabetLeftMargin:I

.field private mAlphabetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

.field private mAlphabetMaxOffset:I

.field private mAlphabetTextSize:I

.field private mAnimMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBackAnimTime:J

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSelection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field mDefaultColor:I

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInSelect:Z

.field private mIndexListSize:I

.field private mIsClipInitial:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mMaxOffset:I

.field private mMoveCount:I

.field private mOverlay:Landroid/view/ViewGroupOverlay;

.field private mPaddingTopBottom:I

.field private mPopAnimTime:J

.field private mPreSelection:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mSecondaryText:Landroid/widget/TextView;

.field mSelectedColor:I

.field private mSelectedRect:Landroid/graphics/Rect;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mSideIndexHeight:I

.field private mSideIndexX:F

.field private mSideIndexY:F

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mToastBg:Landroid/graphics/drawable/Drawable;

.field private mToastOffset:I

.field private mToastTextSize:I

.field private mTouchRectLeftOffset:I

.field private mUpdatingLayout:Z

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/AlphabetWavesView$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/AlphabetWavesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mBackAnimTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->TAP_TIMEOUT:I

    iput v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->LONG_SELECT:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempMargins:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    iput v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    iput v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    const v3, -0xdc6c14

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    const/high16 v3, -0x1000000

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    sget-object v3, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    iput-boolean v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$2;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$3;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/R$styleable;->AlphabetWavesView:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x36

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMaxOffset:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    const/4 v3, 0x2

    const/16 v4, 0x78

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPopAnimTime:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    const v4, 0x10501ad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastOffset:I

    const/4 v3, 0x6

    const v4, 0x10501a9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastTextSize:I

    const v3, 0x10501aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    const/16 v3, 0x8

    const v4, 0x10501ae

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetMaxOffset:I

    const/16 v3, 0x9

    const v4, 0x10501ab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    const/16 v3, 0xa

    const v4, 0x10501af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetLeftMargin:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const v3, 0x10804ef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v3, 0x10501ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mViewWidth:I

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTouchRectLeftOffset:I

    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    iput-boolean v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "textMinSize":I
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->createPreviewTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->createPreviewTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->isCenter()V

    return-void
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AlphabetWavesView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/AlphabetWavesView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AlphabetWavesView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToHidden()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/AlphabetWavesView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/AlphabetWavesView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$302(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AlphabetWavesView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    return p1
.end method

.method private addTextView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->removeAllViews()V

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .local v0, "i":D
    :goto_0
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    int-to-double v6, v5

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    double-to-int v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v3, v5, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .local v3, "tmpAlphabet":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v4, "tmpTV":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetLeftMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->addView(Landroid/view/View;)V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    goto :goto_0
.end method

.method private adjustPadding()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetMaxOffset:I

    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .local v0, "padding":I
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private changeTextColor(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isWhite"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "curTextV":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    goto :goto_0
.end method

.method private createPreviewTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-object v1
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private doBackAnim(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "tmpAnimator":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mBackAnimTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getItemPosition()I
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexHeight:I

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexHeight:I

    int-to-double v4, v1

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    int-to-double v6, v1

    div-double v2, v4, v6

    .local v2, "pixelPerIndexItem":D
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-int v0, v4

    .local v0, "itemPosition":I
    return v0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x0

    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView$4;->$SwitchMap$com$letv$leui$widget$AlphabetWavesView$EnvLanguage:[I

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setGravity(I)V

    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setGravity(I)V

    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    if-nez p2, :cond_0

    const/4 v8, 0x0

    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .local v10, "marginTop":I
    const/4 v9, 0x0

    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v13

    .local v13, "width":I
    sub-int v15, v4, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mViewWidth:I

    sub-int v15, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastOffset:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v15, v13

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .local v7, "left":I
    add-int v11, v7, v13

    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempMargins:Landroid/graphics/Rect;

    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/AlphabetWavesView;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->removeCallbacks(Ljava/lang/Runnable;)Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->postAutoHide()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v0, v1, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToVisible()V

    goto :goto_0

    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionPreviewLayout(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToHidden()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transitionPreviewLayout(I)Z
    .locals 10
    .param p1, "sectionIndex"    # I

    .prologue
    const-wide/16 v8, 0x32

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v5, v6, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .local v5, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    .local v3, "showing":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    .local v4, "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Lcom/letv/leui/widget/AlphabetWavesView;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .local v2, "showTarget":Landroid/animation/Animator;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/letv/leui/widget/AlphabetWavesView;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "hideShowing":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    .end local v1    # "hideShowing":Landroid/animation/Animator;
    .end local v2    # "showTarget":Landroid/animation/Animator;
    .end local v3    # "showing":Landroid/widget/TextView;
    .end local v4    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    .restart local v3    # "showing":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    .restart local v4    # "target":Landroid/widget/TextView;
    goto :goto_0

    .restart local v1    # "hideShowing":Landroid/animation/Animator;
    .restart local v2    # "showTarget":Landroid/animation/Animator;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private transitionToHidden()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "fadeOut":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    return-void
.end method

.method private transitionToVisible()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    return-void
.end method

.method private updateContainerRect()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    .local v0, "container":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected backAlphabet(Z)V
    .locals 8
    .param p1, "isSelected"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v0, v6, 0x2

    .local v0, "halfMoveCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .local v3, "vaAnim":Landroid/animation/ValueAnimator;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_6

    iget v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v6, v0

    if-le v1, v6, :cond_6

    iget v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_6

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .local v2, "tX":F
    :goto_1
    cmpg-float v6, v2, v5

    if-ltz v6, :cond_3

    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    :cond_3
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->doBackAnim(Landroid/view/View;)V

    .end local v2    # "tX":F
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v4    # "view":Landroid/view/View;
    :cond_5
    move v2, v5

    goto :goto_1

    .end local v4    # "view":Landroid/view/View;
    :cond_6
    iget v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v6, v0

    if-le v1, v6, :cond_7

    iget v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    add-int/2addr v6, v0

    if-lt v1, v6, :cond_4

    :cond_7
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "view":Landroid/view/View;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .restart local v2    # "tX":F
    :goto_3
    cmpg-float v6, v2, v5

    if-ltz v6, :cond_8

    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    :cond_8
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->doBackAnim(Landroid/view/View;)V

    goto :goto_2

    .end local v2    # "tX":F
    :cond_9
    move v2, v5

    goto :goto_3
.end method

.method public isClipIntial()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->adjustPadding()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->requestLayout()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->updatePopAlphabetLayout()V

    iget-boolean v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->addTextView()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x6

    if-ne v14, v15, :cond_0

    const/4 v8, 0x1

    .local v8, "pointerUp":Z
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .local v11, "skipIndex":I
    :goto_1
    const/4 v12, 0x0

    .local v12, "sumX":F
    const/4 v13, 0x0

    .local v13, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_3

    if-ne v11, v6, :cond_2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v8    # "pointerUp":Z
    .end local v11    # "skipIndex":I
    .end local v12    # "sumX":F
    .end local v13    # "sumY":F
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "pointerUp":Z
    :cond_1
    const/4 v11, -0x1

    goto :goto_1

    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v11    # "skipIndex":I
    .restart local v12    # "sumX":F
    .restart local v13    # "sumY":F
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_6

    add-int/lit8 v3, v2, -0x1

    .local v3, "div":I
    :goto_4
    int-to-float v14, v3

    div-float v4, v12, v14

    .local v4, "focusX":F
    int-to-float v14, v3

    div-float v5, v13, v14

    .local v5, "focusY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTouchRectLeftOffset:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v14, v5, v14

    if-ltz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v14, v5, v14

    if-gtz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    float-to-int v15, v4

    float-to-int v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v14, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    const/4 v14, 0x0

    :goto_5
    return v14

    .end local v3    # "div":I
    .end local v4    # "focusX":F
    .end local v5    # "focusY":F
    :cond_6
    move v3, v2

    goto/16 :goto_4

    .restart local v3    # "div":I
    .restart local v4    # "focusX":F
    .restart local v5    # "focusY":F
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    if-eq v14, v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    packed-switch v14, :pswitch_data_0

    :cond_9
    :goto_6
    const/4 v14, 0x1

    goto :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getItemPosition()I

    move-result v7

    .local v7, "itemPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    if-ne v14, v7, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/16 v15, 0xa

    if-lt v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/AlphabetWavesView;->TAP_TIMEOUT:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_6

    .end local v7    # "itemPosition":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    sub-float v9, v14, v4

    .local v9, "scrollX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    sub-float v10, v14, v5

    .local v10, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    if-nez v14, :cond_c

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_b

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    sub-float/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    sub-float/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    goto/16 :goto_6

    :cond_c
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_d

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    sub-float/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    sub-float/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->popAlphabet()V

    goto/16 :goto_6

    .end local v9    # "scrollX":F
    .end local v10    # "scrollY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    if-eqz v14, :cond_e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected popAlphabet()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    iput-boolean v13, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-direct {p0, v5, v12}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    iput-boolean v12, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v0, v5, 0x2

    .local v0, "halfMoveCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    add-int v2, v5, v1

    .local v2, "position":I
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_3

    const-string v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v7

    aput v7, v6, v12

    iget v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMaxOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    add-int/lit8 v8, v1, 0x1

    int-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    aput v7, v6, v13

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "tmpAnimator":Landroid/animation/ValueAnimator;
    :goto_1
    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPopAnimTime:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    sget-object v5, Lcom/letv/leui/widget/AlphabetWavesView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v3    # "tmpAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method protected selectAlphabet()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getItemPosition()I

    move-result v2

    .local v2, "itemPosition":I
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    if-eq v4, v2, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    iput v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v1, v4, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .local v1, "firstAlphabet":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "textV":Landroid/widget/TextView;
    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "curTextV":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iput v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    invoke-interface {v4, v2, v1}, Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;->onAlphabetChanged(ILjava/lang/String;)V

    :cond_2
    move v4, v5

    .end local v0    # "curTextV":Landroid/widget/TextView;
    .end local v1    # "firstAlphabet":Ljava/lang/String;
    .end local v3    # "textV":Landroid/widget/TextView;
    :goto_1
    return v4

    .restart local v0    # "curTextV":Landroid/widget/TextView;
    .restart local v1    # "firstAlphabet":Ljava/lang/String;
    .restart local v3    # "textV":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    goto :goto_0

    .end local v0    # "curTextV":Landroid/widget/TextView;
    .end local v1    # "firstAlphabet":Ljava/lang/String;
    .end local v3    # "textV":Landroid/widget/TextView;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAlphabetList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    move-object v1, p1

    .local v1, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "previousAlphabet":Ljava/lang/String;
    const-string v8, "[0-9]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .local v5, "numberPattern":Ljava/util/regex/Pattern;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "country":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "firstAlphabet":Ljava/lang/String;
    :goto_1
    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v3, "#"

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_3

    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .local v7, "tempLeter":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    invoke-direct {v0, p0, v10}, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;Lcom/letv/leui/widget/AlphabetWavesView$1;)V

    .local v0, "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    iput-object v7, v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    .end local v7    # "tempLeter":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    goto :goto_0

    .end local v3    # "firstAlphabet":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    goto :goto_1

    .restart local v3    # "firstAlphabet":Ljava/lang/String;
    :cond_3
    move-object v7, v6

    goto :goto_2

    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "firstAlphabet":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    invoke-direct {v0, p0, v10}, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;Lcom/letv/leui/widget/AlphabetWavesView$1;)V

    .restart local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    iput-object v6, v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    :cond_5
    iput-boolean v9, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->requestLayout()V

    return-void
.end method

.method public setEnvLangage(Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;)V
    .locals 0
    .param p1, "language"    # Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->isCenter()V

    :cond_0
    return-void
.end method

.method public setIsClipInitial(Z)V
    .locals 0
    .param p1, "isClipInitial"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    return-void
.end method

.method public setOnAlphabetListener(Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;)V
    .locals 0
    .param p1, "aListener"    # Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    return-void
.end method

.method public setSelectedBackGroundColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "textV":Landroid/widget/TextView;
    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "curTextV":Landroid/widget/TextView;
    const/4 v1, 0x0

    .local v1, "oldColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    :cond_3
    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    .end local v0    # "curTextV":Landroid/widget/TextView;
    .end local v1    # "oldColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textV":Landroid/widget/TextView;
    :cond_4
    return-void

    .restart local v0    # "curTextV":Landroid/widget/TextView;
    .restart local v1    # "oldColor":Landroid/content/res/ColorStateList;
    .restart local v2    # "textV":Landroid/widget/TextView;
    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextDefaultColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    :cond_0
    return-void
.end method

.method public setToastBackGroundColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .local v0, "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .end local v0    # "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method public updatePopAlphabetLayout()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mUpdatingLayout:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mUpdatingLayout:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->updateContainerRect()V

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
