.class public Lcom/letv/leui/widget/LeItemView;
.super Landroid/widget/LinearLayout;
.source "LeItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeItemView$DropdownPopup;,
        Lcom/letv/leui/widget/LeItemView$OnChangeListener;
    }
.end annotation


# static fields
.field public static final COMPONENT_MODE_ARROW_HORIZONTAL:I = 0x3

.field public static final COMPONENT_MODE_ARROW_POPUPWINDOW:I = 0x4

.field public static final COMPONENT_MODE_LECHECKBOX:I = 0x1

.field public static final COMPONENT_MODE_LESWITCH:I = 0x2

.field public static final COMPONENT_MODE_NONE:I = 0x0

.field public static final GRAVITY_END:I = 0x1

.field public static final GRAVITY_START:I = 0x0

.field public static final ITEM_PADDING_TOP_BOTTOM_BIG:I = 0x0

.field public static final ITEM_PADDING_TOP_BOTTOM_MEDIUM:I = 0x1

.field public static final ITEM_PADDING_TOP_BOTTOM_SMALL:I = 0x2

.field private static final MAX_ITEMS_MEASURED:I = 0xf


# instance fields
.field private final DISMISS_FADE_OUT:I

.field private final SHOWING_FADE_IN:I

.field animateDrawable:Landroid/graphics/drawable/Drawable;

.field private final delta:F

.field handler:Landroid/os/Handler;

.field isAnimate:Z

.field private lastClickTime:J

.field private mAnchorView:Landroid/view/View;

.field private mArrow:Landroid/widget/ImageView;

.field private mClickedDialogEntryIndex:I

.field private mComponentMode:I

.field private mCurrentOrientation:I

.field private mDropDownWidth:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageHeight:I

.field private mImageLayoutResId:I

.field private mImageWidth:I

.field private mItemPaddingTopBottomMode:I

.field private mItemPaddingTopBottomValue:I

.field private mListTitleColorNormal:I

.field private mListTitleColorSelected:I

.field private mMaxDropDownHeight:I

.field private mOnChangeListener:Lcom/letv/leui/widget/LeItemView$OnChangeListener;

.field private mOverlayResouce:I

.field private mPopGravity:I

.field private mPopup:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

.field private mResources:Landroid/content/res/Resources;

.field private mShowComponent:Z

.field private mShowImage:Z

.field private mShowSubTitle:Z

.field private mShowTitle:Z

.field private mShowValue:Z

.field private mSubTitleText:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTitleText:Ljava/lang/String;

.field private mValueSet:Z

.field private mValueText:Ljava/lang/String;

.field mValueTextView:Landroid/widget/TextView;

.field private orgAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x10900cb

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mOverlayResouce:I

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeItemView;->mShowImage:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    iput v5, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    iput v6, p0, Lcom/letv/leui/widget/LeItemView;->mMaxDropDownHeight:I

    iput v4, p0, Lcom/letv/leui/widget/LeItemView;->mPopGravity:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mTempRect:Landroid/graphics/Rect;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/letv/leui/widget/LeItemView;->lastClickTime:J

    const/16 v1, 0x65

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->SHOWING_FADE_IN:I

    const/16 v1, 0x66

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->DISMISS_FADE_OUT:I

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->delta:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->orgAlpha:F

    new-instance v1, Lcom/letv/leui/widget/LeItemView$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeItemView$1;-><init>(Lcom/letv/leui/widget/LeItemView;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->handler:Landroid/os/Handler;

    iput-boolean v5, p0, Lcom/letv/leui/widget/LeItemView;->isAnimate:Z

    sget-object v1, Lcom/android/internal/R$styleable;->LeItemView:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeItemView;->mShowImage:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mTitleText:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mSubTitleText:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mValueText:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mComponentMode:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mImageWidth:I

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mImageHeight:I

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomMode:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mPopGravity:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mDropDownWidth:I

    const/4 v1, 0x2

    iget v2, p0, Lcom/letv/leui/widget/LeItemView;->mMaxDropDownHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mMaxDropDownHeight:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mListTitleColorNormal:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeItemView;->mListTitleColorSelected:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeItemView;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->orgAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mPopGravity:I

    return v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/LeItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/LeItemView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mMaxDropDownHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$DropdownPopup;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mPopup:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$OnChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mOnChangeListener:Lcom/letv/leui/widget/LeItemView$OnChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mOverlayResouce:I

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/LeItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/LeItemView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private creatTitleLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x800013

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050218

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method private createComponent()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .local v4, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v5, 0x800015

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v5, p0, Lcom/letv/leui/widget/LeItemView;->mComponentMode:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v4

    :pswitch_1
    new-instance v1, Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/letv/leui/widget/LeCheckBox;-><init>(Landroid/content/Context;)V

    .local v1, "leCheckbox":Lcom/letv/leui/widget/LeCheckBox;
    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x1020072

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/LeCheckBox;->setId(I)V

    move-object v4, v1

    goto :goto_0

    .end local v1    # "leCheckbox":Lcom/letv/leui/widget/LeCheckBox;
    :pswitch_2
    new-instance v2, Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/letv/leui/widget/LeSwitch;-><init>(Landroid/content/Context;)V

    .local v2, "leSwitch":Lcom/letv/leui/widget/LeSwitch;
    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x1020073

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeSwitch;->setId(I)V

    move-object v4, v2

    goto :goto_0

    .end local v2    # "leSwitch":Lcom/letv/leui/widget/LeSwitch;
    :pswitch_3
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, "arrow":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v6, 0x10805d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x1020074

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    move-object v4, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createImageView()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const v6, 0x1050216

    const/4 v0, 0x0

    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    if-nez v4, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageWidth:I

    iget v5, p0, Lcom/letv/leui/widget/LeItemView;->mImageHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    new-instance v0, Landroid/widget/ImageView;

    .end local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageWidth:I

    iget v5, p0, Lcom/letv/leui/widget/LeItemView;->mImageHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Inflater ImageLayoutResId View must be a ImageView"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private createSubTitle()Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x105020f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "textSize":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x1060171

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .local v1, "textColor":I
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mSubTitleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    int-to-float v4, v2

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v3
.end method

.method private createTitle()Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x105020e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "textSize":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x1060170

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .local v1, "textColor":I
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x102006f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    int-to-float v4, v2

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object v3
.end method

.method private createValue()Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x800015

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050210

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "textSize":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v5, 0x1060172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .local v1, "textColor":I
    new-instance v3, Lcom/letv/leui/widget/LeTextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/letv/leui/widget/LeTextView;-><init>(Landroid/content/Context;)V

    .local v3, "textView":Lcom/letv/leui/widget/LeTextView;
    invoke-virtual {v3, v0}, Lcom/letv/leui/widget/LeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Lcom/letv/leui/widget/LeTextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeItemView;->mValueText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/LeTextView;->setIncludeFontPadding(Z)V

    int-to-float v4, v2

    invoke-virtual {v3, v6, v4}, Lcom/letv/leui/widget/LeTextView;->setTextSize(IF)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeTextView;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeTextView;->setSingleLine(Z)V

    return-object v3
.end method

.method private initView()V
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    iget v8, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomMode:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050211

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    iget-object v10, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v11, 0x1050212

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget v11, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/letv/leui/widget/LeItemView;->setPadding(IIII)V

    invoke-virtual {p0, v13}, Lcom/letv/leui/widget/LeItemView;->setGravity(I)V

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeItemView;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v7, p0

    .local v7, "wrapperLinearLayout":Landroid/widget/LinearLayout;
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    if-eqz v8, :cond_1

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object v7, v2

    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowImage:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createImageView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->creatTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .restart local v2    # "linearLayout":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createTitle()Landroid/widget/TextView;

    move-result-object v5

    .local v5, "title":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createSubTitle()Landroid/widget/TextView;

    move-result-object v3

    .local v3, "subTitle":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050217

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eq v7, p0, :cond_3

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "subTitle":Landroid/widget/TextView;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_3
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createTitle()Landroid/widget/TextView;

    move-result-object v4

    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050218

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eq v7, p0, :cond_4

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createValue()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createComponent()Landroid/view/View;

    move-result-object v6

    .local v6, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050219

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    :goto_1
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createComponent()Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    .end local v6    # "view":Landroid/view/View;
    :cond_6
    return-void

    .end local v7    # "wrapperLinearLayout":Landroid/widget/LinearLayout;
    :pswitch_0
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050213

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050214

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mResources:Landroid/content/res/Resources;

    const v9, 0x1050215

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    goto/16 :goto_0

    .restart local v7    # "wrapperLinearLayout":Landroid/widget/LinearLayout;
    :cond_7
    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->createValue()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeItemView;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "taget"    # Landroid/view/View;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Lcom/letv/leui/widget/LeItemView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeItemView$2;-><init>(Lcom/letv/leui/widget/LeItemView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public changeWindowAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    return v0
.end method

.method public getmComponentMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mComponentMode:I

    return v0
.end method

.method public getmImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getmImageHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mImageHeight:I

    return v0
.end method

.method public getmImageLayoutResId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    return v0
.end method

.method public getmImageWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mImageWidth:I

    return v0
.end method

.method public getmItemPaddingTopBottomMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomMode:I

    return v0
.end method

.method public getmItemPaddingTopBottomValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    return v0
.end method

.method public getmSubTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mSubTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getmValueText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView;->mValueText:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeItemView;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public hideKeyBoard()V
    .locals 2

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/LeItemView;->hide(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ismShowComponent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    return v0
.end method

.method public ismShowImage()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowImage:Z

    return v0
.end method

.method public ismShowSubTitle()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    return v0
.end method

.method public ismShowTitle()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    return v0
.end method

.method public ismShowValue()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeItemView;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->initView()V

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeItemView;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    return-void
.end method

.method public setOnChangeListener(Lcom/letv/leui/widget/LeItemView$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeItemView$OnChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mOnChangeListener:Lcom/letv/leui/widget/LeItemView$OnChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeItemView;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeItemView;->initView()V

    return-void
.end method

.method public setmComponentMode(I)V
    .locals 0
    .param p1, "mComponentMode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mComponentMode:I

    return-void
.end method

.method public setmImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mImageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setmImageHeight(I)V
    .locals 0
    .param p1, "mImageHeight"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mImageHeight:I

    return-void
.end method

.method public setmImageLayoutResId(I)V
    .locals 0
    .param p1, "mImageLayoutResId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mImageLayoutResId:I

    return-void
.end method

.method public setmImageWidth(I)V
    .locals 0
    .param p1, "mImageWidth"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mImageWidth:I

    return-void
.end method

.method public setmItemPaddingTopBottomMode(I)V
    .locals 0
    .param p1, "mItemPaddingTopBottomMode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomMode:I

    return-void
.end method

.method public setmItemPaddingTopBottomValue(I)V
    .locals 0
    .param p1, "mItemPaddingTopBottomValue"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeItemView;->mItemPaddingTopBottomValue:I

    return-void
.end method

.method public setmShowComponent(Z)V
    .locals 1
    .param p1, "mSjhowComponent"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeItemView;->mShowComponent:Z

    return-void
.end method

.method public setmShowImage(Z)V
    .locals 0
    .param p1, "mShowImage"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeItemView;->mShowImage:Z

    return-void
.end method

.method public setmShowSubTitle(Z)V
    .locals 0
    .param p1, "mShowSubTitle"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeItemView;->mShowSubTitle:Z

    return-void
.end method

.method public setmShowTitle(Z)V
    .locals 0
    .param p1, "mShowTitle"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeItemView;->mShowTitle:Z

    return-void
.end method

.method public setmShowValue(Z)V
    .locals 0
    .param p1, "mShowValue"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeItemView;->mShowValue:Z

    return-void
.end method

.method public setmSubTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSubTitleText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mSubTitleText:Ljava/lang/String;

    return-void
.end method

.method public setmTitleText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitleText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mTitleText:Ljava/lang/String;

    return-void
.end method

.method public setmValueText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mValueText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView;->mValueText:Ljava/lang/String;

    return-void
.end method
