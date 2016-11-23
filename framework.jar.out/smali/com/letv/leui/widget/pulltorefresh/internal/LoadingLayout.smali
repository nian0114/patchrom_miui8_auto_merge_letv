.class public abstract Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout$1;
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/view/ViewGroup;

.field protected final mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 71
    iput-object p3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    .line 72
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900d8

    invoke-virtual {v6, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    :goto_0
    const v6, 0x1020499

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    .line 83
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x102049c

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 84
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x102049b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 86
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x102049d

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 87
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x102049a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 88
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 101
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v6, :cond_a

    const/16 v6, 0x50

    :goto_1
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    const v6, 0x10405d9

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 105
    const v6, 0x10405db

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 106
    const v6, 0x10405da

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 110
    :goto_2
    const/16 v6, 0x8

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {p4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 112
    .local v1, "color":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setBackgroundColor(I)V

    .line 115
    .end local v1    # "color":I
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    const/4 v6, 0x2

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 122
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v6, 0xc

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .local v5, "styleID":Landroid/util/TypedValue;
    const/16 v6, 0xc

    invoke-virtual {p4, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 125
    iget v6, v5, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setTextAppearance(I)V

    .line 127
    .end local v5    # "styleID":Landroid/util/TypedValue;
    :cond_2
    const/16 v6, 0xd

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 129
    .restart local v5    # "styleID":Landroid/util/TypedValue;
    const/16 v6, 0xd

    invoke-virtual {p4, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 130
    iget v6, v5, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 134
    .end local v5    # "styleID":Landroid/util/TypedValue;
    :cond_3
    const/4 v6, 0x3

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 135
    const/4 v6, 0x3

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 136
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_4

    .line 137
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    .end local v2    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    const/4 v6, 0x4

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 141
    const/4 v6, 0x4

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 142
    .restart local v2    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_5

    .line 143
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    .end local v2    # "colors":Landroid/content/res/ColorStateList;
    :cond_5
    const/4 v3, 0x0

    .line 149
    .local v3, "imageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x7

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 150
    const/4 v6, 0x7

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 155
    :cond_6
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 158
    const/16 v6, 0x9

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 159
    const/16 v6, 0x9

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 171
    :cond_7
    :goto_3
    if-nez v3, :cond_8

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 176
    :cond_8
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 179
    return-void

    .line 74
    .end local v3    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900d7

    invoke-virtual {v6, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 91
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v6, :cond_9

    const/16 v6, 0x30

    :goto_4
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    const v6, 0x10405dc

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 95
    const v6, 0x10405de

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 96
    const v6, 0x10405dd

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 91
    :cond_9
    const/4 v6, 0x3

    goto :goto_4

    .line 101
    :cond_a
    const/4 v6, 0x5

    goto/16 :goto_1

    .line 164
    .restart local v3    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    const/16 v6, 0xa

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 165
    const/16 v6, 0xa

    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 89
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 155
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 346
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 365
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 371
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 380
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 389
    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 204
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_3
    return-void
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPullImpl(F)V

    .line 222
    :cond_0
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefreshImpl()V

    .line 231
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :cond_1
    return-void

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshingImpl()V

    goto :goto_0
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefreshImpl()V

    .line 257
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->resetImpl()V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 185
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 297
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 301
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 305
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 310
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 189
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 191
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_3
    return-void
.end method
