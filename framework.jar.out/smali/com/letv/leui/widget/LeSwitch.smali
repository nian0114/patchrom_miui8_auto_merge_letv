.class public Lcom/letv/leui/widget/LeSwitch;
.super Landroid/widget/Switch;
.source "LeSwitch.java"

# interfaces
.implements Lcom/letv/leui/widget/LeCheckable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DISABLE_ALPHA:I = 0x4c

.field private static final THUMBPOSITION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/letv/leui/widget/LeSwitch;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private location:[I

.field private mAlpha:I

.field private mCurrentAnimator:Landroid/animation/ObjectAnimator;

.field private mCurrentLayoutDirection:I

.field private mMinFlingVelocity:I

.field private mPaint:Landroid/text/TextPaint;

.field mSaveLayerRectF:Landroid/graphics/RectF;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchPivotX:I

.field private mSwitchPivotY:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mThumbAnimateTime:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:I

.field private mThumbOffAnimator:Landroid/animation/ObjectAnimator;

.field private mThumbOnAnimator:Landroid/animation/ObjectAnimator;

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackColor:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackRadius:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scaleRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lcom/letv/leui/widget/LeSwitch$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "ThumbPosition"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeSwitch$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/widget/LeSwitch;->THUMBPOSITION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    const/16 v15, 0xff

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->location:[I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, "res":Landroid/content/res/Resources;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/letv/leui/widget/LeSwitch;->setShowText(Z)V

    const v15, 0x106011f

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    const v15, 0x108064d

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v15, 0x108064e

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const v15, 0x10e00cf

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbAnimateTime:I

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .local v10, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .local v14, "theme":Landroid/content/res/Resources$Theme;
    const v15, 0x101042a

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v15

    if-eqz v15, :cond_0

    iget v15, v10, Landroid/util/TypedValue;->data:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    :cond_0
    sget-object v15, Lcom/android/internal/R$styleable;->leSwitch:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .local v9, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .local v5, "attr":I
    packed-switch v5, :pswitch_data_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    invoke-virtual {v4, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbAnimateTime:I

    invoke-virtual {v4, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbAnimateTime:I

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    invoke-virtual {v4, v5, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    goto :goto_1

    .end local v5    # "attr":I
    .end local v8    # "i":I
    .end local v9    # "n":I
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x1

    .local v6, "clickable":Z
    sget-object v15, Lcom/android/internal/R$styleable;->View:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v15, 0x1e

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/letv/leui/widget/LeSwitch;->setClickable(Z)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    :cond_2
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbHeight:I

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackRadius:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mPaint:Landroid/text/TextPaint;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .local v7, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mMinFlingVelocity:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0xff

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v13, v15

    .local v13, "switchWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v12, v15

    .local v12, "switchHeight":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchHeight:I

    sget-object v15, Lcom/letv/leui/widget/LeSwitch;->THUMBPOSITION:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbAnimateTime:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    new-instance v16, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v15, Lcom/letv/leui/widget/LeSwitch;->THUMBPOSITION:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbAnimateTime:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    new-instance v16, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    invoke-super {v0, v15}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v15}, Landroid/widget/Switch;->setThumbTextPadding(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->refreshDrawableState()V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getLayoutDirection()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mCurrentLayoutDirection:I

    return-void

    .end local v12    # "switchHeight":I
    .end local v13    # "switchWidth":I
    :cond_4
    const/16 v15, 0x4c

    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeSwitch;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeSwitch;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    return v0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 1
    .param p1, "newCheckedState"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->invalidate()V

    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    iget v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchTop:I

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    sub-int v3, v4, v5

    .local v3, "thumbTop":I
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchLeft:I

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    sub-int v1, v4, v5

    .local v1, "thumbLeft":I
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    add-int v2, v4, v5

    .local v2, "thumbRight":I
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchBottom:I

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    add-int v0, v4, v5

    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isTheLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setThumbPosition(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :cond_2
    iput v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    goto :goto_1
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput v3, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .local v0, "commitChange":Z
    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    cmpg-float v4, v2, v6

    if-gez v4, :cond_2

    .end local v2    # "xvel":F
    .local v1, "newState":Z
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void

    .end local v0    # "commitChange":Z
    .end local v1    # "newState":Z
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    cmpl-float v4, v2, v6

    if-gtz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getDrawableState()[I

    move-result-object v0

    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/widget/Switch;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Switch;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .local v0, "padding":I
    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/widget/Switch;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Switch;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .local v0, "padding":I
    goto :goto_0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/Switch;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->location:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeSwitch;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchLeft:I

    .local v12, "switchLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchTop:I

    move/from16 v22, v0

    .local v22, "switchTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchRight:I

    move/from16 v21, v0

    .local v21, "switchRight":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchBottom:I

    .local v7, "switchBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchPivotX:I

    move/from16 v19, v0

    .local v19, "switchPivotX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mSwitchPivotY:I

    move/from16 v20, v0

    .local v20, "switchPivotY":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isEnabled()Z

    move-result v30

    if-nez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    move/from16 v31, v0

    const/16 v32, 0x1f

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/LeSwitch;->mPaint:Landroid/text/TextPaint;

    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .local v5, "originColor":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackRadius:I

    move/from16 v29, v0

    .local v29, "trackRadius":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    add-int/lit8 v31, v12, 0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    add-int/lit8 v31, v22, 0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    add-int/lit8 v31, v21, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRectF:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v26

    .local v26, "thumbScrollRange":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v30

    if-eqz v30, :cond_3

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL    # 0.2

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v4, v0

    .local v4, "offset":I
    :goto_1
    add-int v27, v19, v4

    .local v27, "trackPivotX":I
    move/from16 v28, v20

    .local v28, "trackPivotY":I
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v30

    if-eqz v30, :cond_4

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    :goto_2
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v8, v32, v30

    .local v8, "scaleRate":D
    sub-int v30, v21, v12

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v8

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v18, v0

    .local v18, "switchOffWidth":I
    sub-int v30, v7, v22

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v8

    move-wide/from16 v0, v30

    double-to-int v14, v0

    .local v14, "switchOffHeight":I
    div-int/lit8 v30, v18, 0x2

    sub-int v15, v27, v30

    .local v15, "switchOffLeft":I
    add-int v16, v15, v18

    .local v16, "switchOffRight":I
    div-int/lit8 v30, v14, 0x2

    sub-int v17, v28, v30

    .local v17, "switchOffTop":I
    add-int v13, v17, v14

    .local v13, "switchOffBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpg-double v30, v8, v30

    if-gez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    if-eqz v30, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v32, v32, v8

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v10, v12, v30

    .local v10, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v11, v21, v30

    .local v11, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    move/from16 v30, v0

    const/high16 v31, 0x3f000000    # 0.5f

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v24, v0

    .local v24, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v10, v30

    add-int v23, v30, v24

    .local v23, "thumbLeft":I
    add-int v30, v10, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbWidth:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    add-int v25, v30, v31

    .local v25, "thumbRight":I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v10, v1, v11, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v4    # "offset":I
    .end local v5    # "originColor":I
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scaleRate":D
    .end local v10    # "switchInnerLeft":I
    .end local v11    # "switchInnerRight":I
    .end local v13    # "switchOffBottom":I
    .end local v14    # "switchOffHeight":I
    .end local v15    # "switchOffLeft":I
    .end local v16    # "switchOffRight":I
    .end local v17    # "switchOffTop":I
    .end local v18    # "switchOffWidth":I
    .end local v23    # "thumbLeft":I
    .end local v24    # "thumbPos":I
    .end local v25    # "thumbRight":I
    .end local v26    # "thumbScrollRange":I
    .end local v27    # "trackPivotX":I
    .end local v28    # "trackPivotY":I
    .end local v29    # "trackRadius":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0

    .restart local v5    # "originColor":I
    .restart local v6    # "paint":Landroid/graphics/Paint;
    .restart local v26    # "thumbScrollRange":I
    .restart local v29    # "trackRadius":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fc999999999999aL    # 0.2

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v4, v0

    .restart local v4    # "offset":I
    goto/16 :goto_1

    .restart local v27    # "trackPivotX":I
    .restart local v28    # "trackPivotY":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    move/from16 v30, v0

    goto/16 :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/Switch;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingLeft()I

    move-result v1

    .local v1, "switchLeft":I
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    add-int v2, v1, v4

    .local v2, "switchRight":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "switchTop":I
    const/4 v0, 0x0

    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    :goto_1
    iput v1, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchLeft:I

    iput v3, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchTop:I

    iput v0, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchBottom:I

    iput v2, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchRight:I

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchPivotX:I

    add-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchPivotY:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v5, v3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    return-void

    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .restart local v2    # "switchRight":I
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .restart local v1    # "switchLeft":I
    goto :goto_0

    .restart local v0    # "switchBottom":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .local v2, "switchWidth":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->scaleRate:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .local v1, "switchHeight":I
    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getMeasuredHeight()I

    move-result v0

    .local v0, "measuredHeight":I
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getMeasuredWidthAndState()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/letv/leui/widget/LeSwitch;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentLayoutDirection:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    iput p1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentLayoutDirection:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/letv/leui/widget/LeSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    :pswitch_1
    return v3

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .local v2, "y":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/LeSwitch;->hitThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v3, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    iput v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchX:F

    iput v2, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchY:F

    goto :goto_0

    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_3
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .restart local v2    # "y":F
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_1
    iput v6, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v1, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchX:F

    iput v2, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchY:F

    goto :goto_1

    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_5
    iget v4, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    if-ne v4, v6, :cond_2

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/letv/leui/widget/LeSwitch;->mTouchMode:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeSwitch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "playAnimation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v0

    .local v0, "oldChecked":Z
    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOnAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbOffAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeSwitch;->mCurrentAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->jumpDrawablesToCurrentState()V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(Z)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x4c

    iput v0, p0, Lcom/letv/leui/widget/LeSwitch;->mAlpha:I

    goto :goto_0
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->requestLayout()V

    return-void
.end method

.method public setThumbPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->getThumbScrollRange()I

    move-result v0

    .local v0, "thumbScrollRange":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeSwitch;->isTheLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->invalidate()V

    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbPosition:F

    goto :goto_0
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackColor:I

    :cond_0
    return-void
.end method

.method public setTrackColorOff(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v0

    .local v0, "checked":Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeSwitch;->setChecked(ZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Switch;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
