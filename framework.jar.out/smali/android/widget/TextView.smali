.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/letv/leui/util/LeLinkify$OnURLClickListener;
.implements Lcom/letv/leui/text/LeTextInterface;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$5;,
        Landroid/widget/TextView$OnURLClickEventListener;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private hasUintSpWithStyle:Z

.field private isFontSizeEnlarge:Z

.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastTouchUpTime:J

.field private mLayout:Landroid/text/Layout;

.field private mLeFontFamily:Ljava/lang/String;

.field mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

.field private mLeTextViewDiscardNextActionUp:Z

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStyleIndex:I

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

.field private mUserSetTextScaleX:Z

.field private mUserSetTypeface:Landroid/graphics/Typeface;

.field private textSizeEnlargeMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 290
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 296
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 297
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 302
    new-array v1, v4, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 647
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 648
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 650
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 7063
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 675
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 678
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 679
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 683
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 75
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 688
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 333
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 334
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 529
    const/16 v72, 0x3

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 531
    const/16 v72, -0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 538
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 549
    sget-object v72, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 566
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 568
    const v72, 0x800033

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 573
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 575
    const/high16 v72, 0x3f800000    # 1.0f

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 576
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 581
    const v72, 0x7fffffff

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 582
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 583
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 584
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 586
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v72, v0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v72, v0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 589
    const v72, 0x7fffffff

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 590
    const/16 v72, 0x2

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 591
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 592
    const/16 v72, 0x2

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 595
    const/16 v72, -0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 596
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 597
    const/16 v72, -0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 609
    sget-object v72, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 615
    const v72, 0x6633b5e5

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 618
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 620
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFirstTouch:Z

    .line 621
    const-wide/16 v72, 0x0

    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 10585
    const/16 v72, 0x0

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 10848
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 10849
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSizeEnlargeMode:I

    .line 10850
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    .line 10851
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    .line 690
    const-string v72, ""

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    .line 693
    .local v56, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v56 .. v56}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v19

    .line 695
    .local v19, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v72, Landroid/text/TextPaint;

    const/16 v73, 0x1

    invoke-direct/range {v72 .. v73}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v72, v0

    invoke-virtual/range {v56 .. v56}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v73

    move-object/from16 v0, v73

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v73, v0

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v72, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 699
    new-instance v72, Landroid/graphics/Paint;

    const/16 v73, 0x1

    invoke-direct/range {v72 .. v73}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v72, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 704
    const/16 v72, 0x0

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 706
    const/16 v64, 0x0

    .line 707
    .local v64, "textColorHighlight":I
    const/16 v63, 0x0

    .line 708
    .local v63, "textColor":Landroid/content/res/ColorStateList;
    const/16 v65, 0x0

    .line 709
    .local v65, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v66, 0x0

    .line 710
    .local v66, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v67, 0xf

    .line 711
    .local v67, "textSize":I
    const/16 v39, 0x0

    .line 712
    .local v39, "fontFamily":Ljava/lang/String;
    const/16 v40, 0x0

    .line 713
    .local v40, "fontFamilyExplicit":Z
    const/16 v69, -0x1

    .line 714
    .local v69, "typefaceIndex":I
    const/16 v60, -0x1

    .line 715
    .local v60, "styleIndex":I
    const/4 v7, 0x0

    .line 716
    .local v7, "allCaps":Z
    const/16 v58, 0x0

    .line 717
    .local v58, "shadowcolor":I
    const/16 v31, 0x0

    .local v31, "dx":F
    const/16 v32, 0x0

    .local v32, "dy":F
    const/16 v55, 0x0

    .line 718
    .local v55, "r":F
    const/16 v35, 0x0

    .line 719
    .local v35, "elegant":Z
    const/16 v46, 0x0

    .line 720
    .local v46, "letterSpacing":F
    const/16 v41, 0x0

    .line 721
    .local v41, "fontFeatureSettings":Ljava/lang/String;
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 722
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v68

    .line 727
    .local v68, "theme":Landroid/content/res/Resources$Theme;
    new-instance v72, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 738
    sget-object v72, Lcom/android/internal/R$styleable;->LeEnlargeTextSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 739
    .local v13, "b":Landroid/content/res/TypedArray;
    if-eqz v13, :cond_0

    .line 740
    const/16 v72, 0x0

    const/16 v73, 0x0

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 741
    const/16 v72, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    move/from16 v73, v0

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSizeEnlargeMode:I

    .line 743
    :cond_0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 745
    sget-object v72, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    move-object/from16 v2, v72

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 747
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 748
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v72, 0x0

    const/16 v73, -0x1

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 750
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 751
    const/16 v72, -0x1

    move/from16 v0, v72

    if-eq v8, v0, :cond_1

    .line 752
    sget-object v72, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v68

    move-object/from16 v1, v72

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 755
    :cond_1
    if-eqz v9, :cond_4

    .line 756
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v49

    .line 757
    .local v49, "n":I
    const/16 v43, 0x0

    .local v43, "i":I
    :goto_0
    move/from16 v0, v43

    move/from16 v1, v49

    if-ge v0, v1, :cond_3

    .line 758
    move/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 760
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    .line 757
    :cond_2
    :goto_1
    add-int/lit8 v43, v43, 0x1

    goto :goto_0

    .line 762
    :pswitch_0
    move/from16 v0, v64

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v64

    .line 763
    goto :goto_1

    .line 766
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 767
    goto :goto_1

    .line 770
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v65

    .line 771
    goto :goto_1

    .line 774
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v66

    .line 775
    goto :goto_1

    .line 778
    :pswitch_4
    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    .line 780
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v72, v0

    if-eqz v72, :cond_2

    .line 781
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->isTextViewUnitSp(IZ)Z

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    goto :goto_1

    .line 788
    :pswitch_5
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v69

    .line 789
    goto :goto_1

    .line 792
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 793
    goto :goto_1

    .line 796
    :pswitch_7
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v60

    .line 797
    goto :goto_1

    .line 800
    :pswitch_8
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 801
    goto :goto_1

    .line 804
    :pswitch_9
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v58

    .line 805
    goto :goto_1

    .line 808
    :pswitch_a
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    .line 809
    goto :goto_1

    .line 812
    :pswitch_b
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    .line 813
    goto :goto_1

    .line 816
    :pswitch_c
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v55

    .line 817
    goto :goto_1

    .line 820
    :pswitch_d
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    .line 821
    goto/16 :goto_1

    .line 824
    :pswitch_e
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v46

    .line 825
    goto/16 :goto_1

    .line 828
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_1

    .line 833
    .end local v10    # "attr":I
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 836
    .end local v43    # "i":I
    .end local v49    # "n":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v34

    .line 837
    .local v34, "editable":Z
    const/16 v44, 0x0

    .line 838
    .local v44, "inputMethod":Ljava/lang/CharSequence;
    const/16 v51, 0x0

    .line 839
    .local v51, "numeric":I
    const/16 v20, 0x0

    .line 840
    .local v20, "digits":Ljava/lang/CharSequence;
    const/16 v54, 0x0

    .line 841
    .local v54, "phone":Z
    const/4 v12, 0x0

    .line 842
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 843
    .local v11, "autocap":I
    const/4 v15, 0x0

    .line 844
    .local v15, "buffertype":I
    const/16 v57, 0x0

    .line 845
    .local v57, "selectallonfocus":Z
    const/16 v24, 0x0

    .local v24, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v30, 0x0

    .local v30, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .line 846
    .local v26, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .local v22, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .local v27, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 847
    .local v23, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    .line 848
    .local v28, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v29, 0x0

    .line 849
    .local v29, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v25, 0x0

    .line 850
    .local v25, "drawablePadding":I
    const/16 v36, -0x1

    .line 851
    .local v36, "ellipsize":I
    const/16 v59, 0x0

    .line 852
    .local v59, "singleLine":Z
    const/16 v48, -0x1

    .line 853
    .local v48, "maxlength":I
    const-string v62, ""

    .line 854
    .local v62, "text":Ljava/lang/CharSequence;
    const/16 v42, 0x0

    .line 855
    .local v42, "hint":Ljava/lang/CharSequence;
    const/16 v52, 0x0

    .line 856
    .local v52, "password":Z
    const/16 v45, 0x0

    .line 858
    .local v45, "inputType":I
    sget-object v72, Lcom/android/internal/R$styleable;->TextView:[I

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    move-object/from16 v2, v72

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 861
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v49

    .line 862
    .restart local v49    # "n":I
    const/16 v43, 0x0

    .restart local v43    # "i":I
    :goto_2
    move/from16 v0, v43

    move/from16 v1, v49

    if-ge v0, v1, :cond_6

    .line 863
    move/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 865
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    .line 862
    :cond_5
    :goto_3
    :pswitch_10
    add-int/lit8 v43, v43, 0x1

    goto :goto_2

    .line 867
    :pswitch_11
    move/from16 v0, v34

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 868
    goto :goto_3

    .line 871
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .line 872
    goto :goto_3

    .line 875
    :pswitch_13
    move/from16 v0, v51

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    .line 876
    goto :goto_3

    .line 879
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 880
    goto :goto_3

    .line 883
    :pswitch_15
    move/from16 v0, v54

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v54

    .line 884
    goto :goto_3

    .line 887
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 888
    goto :goto_3

    .line 891
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 892
    goto :goto_3

    .line 895
    :pswitch_18
    invoke-virtual {v6, v10, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 896
    goto :goto_3

    .line 899
    :pswitch_19
    move/from16 v0, v57

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    .line 900
    goto :goto_3

    .line 903
    :pswitch_1a
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 907
    :pswitch_1b
    const/16 v72, 0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 911
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 912
    goto :goto_3

    .line 915
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .line 916
    goto :goto_3

    .line 919
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 920
    goto :goto_3

    .line 923
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 924
    goto :goto_3

    .line 927
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 928
    goto :goto_3

    .line 931
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 932
    goto :goto_3

    .line 935
    :pswitch_22
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v28

    .line 936
    goto :goto_3

    .line 939
    :pswitch_23
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v29

    .line 940
    goto/16 :goto_3

    .line 943
    :pswitch_24
    move/from16 v0, v25

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    .line 944
    goto/16 :goto_3

    .line 947
    :pswitch_25
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 951
    :pswitch_26
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 955
    :pswitch_27
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 959
    :pswitch_28
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 963
    :pswitch_29
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 967
    :pswitch_2a
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 971
    :pswitch_2b
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 975
    :pswitch_2c
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 979
    :pswitch_2d
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 983
    :pswitch_2e
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 987
    :pswitch_2f
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 991
    :pswitch_30
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 995
    :pswitch_31
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 999
    :pswitch_32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v42

    .line 1000
    goto/16 :goto_3

    .line 1003
    :pswitch_33
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v62

    .line 1004
    goto/16 :goto_3

    .line 1007
    :pswitch_34
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    if-eqz v72, :cond_5

    .line 1008
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 1013
    :pswitch_35
    move/from16 v0, v59

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v59

    .line 1014
    goto/16 :goto_3

    .line 1017
    :pswitch_36
    move/from16 v0, v36

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 1018
    goto/16 :goto_3

    .line 1021
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v72, v0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 1025
    :pswitch_38
    const/16 v72, 0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    if-nez v72, :cond_5

    .line 1026
    const/16 v72, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1031
    :pswitch_39
    const/16 v72, 0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    if-nez v72, :cond_5

    .line 1032
    const/16 v72, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1037
    :pswitch_3a
    const/16 v72, -0x1

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    .line 1038
    goto/16 :goto_3

    .line 1041
    :pswitch_3b
    const/high16 v72, 0x3f800000    # 1.0f

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1045
    :pswitch_3c
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1049
    :pswitch_3d
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v58

    .line 1050
    goto/16 :goto_3

    .line 1053
    :pswitch_3e
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    .line 1054
    goto/16 :goto_3

    .line 1057
    :pswitch_3f
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    .line 1058
    goto/16 :goto_3

    .line 1061
    :pswitch_40
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v55

    .line 1062
    goto/16 :goto_3

    .line 1065
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1069
    :pswitch_42
    move/from16 v0, v64

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v64

    .line 1070
    goto/16 :goto_3

    .line 1073
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 1074
    goto/16 :goto_3

    .line 1077
    :pswitch_44
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v65

    .line 1078
    goto/16 :goto_3

    .line 1081
    :pswitch_45
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v66

    .line 1082
    goto/16 :goto_3

    .line 1085
    :pswitch_46
    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    .line 1087
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v72, v0

    if-eqz v72, :cond_5

    .line 1088
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->isTextViewUnitSp(IZ)Z

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    goto/16 :goto_3

    .line 1095
    :pswitch_47
    move/from16 v0, v69

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v69

    .line 1096
    goto/16 :goto_3

    .line 1099
    :pswitch_48
    move/from16 v0, v60

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v60

    .line 1100
    goto/16 :goto_3

    .line 1103
    :pswitch_49
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1104
    const/16 v40, 0x1

    .line 1105
    goto/16 :goto_3

    .line 1108
    :pswitch_4a
    move/from16 v0, v52

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    .line 1109
    goto/16 :goto_3

    .line 1112
    :pswitch_4b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v72, v0

    move/from16 v0, v72

    float-to-int v0, v0

    move/from16 v72, v0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v72

    move/from16 v0, v72

    int-to-float v0, v0

    move/from16 v72, v0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1116
    :pswitch_4c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v72, v0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1120
    :pswitch_4d
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v45

    .line 1121
    goto/16 :goto_3

    .line 1124
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_3

    .line 1129
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v73, v0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1136
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v72, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1142
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v73, v0

    move/from16 v0, v73

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1149
    :pswitch_52
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1154
    :pswitch_53
    const/16 v72, 0x0

    :try_start_0
    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1155
    :catch_0
    move-exception v33

    .line 1156
    .local v33, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v72, "TextView"

    const-string v73, "Failure reading input extras"

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1157
    .end local v33    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v33

    .line 1158
    .local v33, "e":Ljava/io/IOException;
    const-string v72, "TextView"

    const-string v73, "Failure reading input extras"

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1163
    .end local v33    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1167
    :pswitch_55
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1171
    :pswitch_56
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1175
    :pswitch_57
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1179
    :pswitch_58
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1183
    :pswitch_59
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v72

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1187
    :pswitch_5a
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1188
    goto/16 :goto_3

    .line 1191
    :pswitch_5b
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v35

    .line 1192
    goto/16 :goto_3

    .line 1195
    :pswitch_5c
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v46

    .line 1196
    goto/16 :goto_3

    .line 1199
    :pswitch_5d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1200
    goto/16 :goto_3

    .line 1203
    :pswitch_5e
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_3

    .line 1207
    :pswitch_5f
    const/16 v72, 0x0

    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_3

    .line 1211
    .end local v10    # "attr":I
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1213
    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1215
    .local v14, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xfff

    move/from16 v70, v0

    .line 1217
    .local v70, "variation":I
    const/16 v72, 0x81

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1d

    const/16 v53, 0x1

    .line 1219
    .local v53, "passwordInputType":Z
    :goto_4
    const/16 v72, 0xe1

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1e

    const/16 v71, 0x1

    .line 1221
    .local v71, "webPasswordInputType":Z
    :goto_5
    const/16 v72, 0x12

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1f

    const/16 v50, 0x1

    .line 1224
    .local v50, "numberPasswordInputType":Z
    :goto_6
    if-eqz v44, :cond_21

    .line 1228
    :try_start_1
    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 1234
    .local v16, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/text/method/KeyListener;

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1242
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v45, :cond_20

    move/from16 v72, v45

    :goto_7
    move/from16 v0, v72

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1334
    .end local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    if-eqz v72, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v71

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1337
    :cond_7
    if-eqz v57, :cond_8

    .line 1338
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1341
    sget-object v72, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v72

    if-ne v14, v0, :cond_8

    .line 1342
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1347
    :cond_8
    if-nez v28, :cond_9

    if-eqz v29, :cond_c

    .line 1348
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v72, v0

    if-nez v72, :cond_a

    .line 1349
    new-instance v72, Landroid/widget/TextView$Drawables;

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1351
    :cond_a
    if-eqz v28, :cond_b

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v72, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 1355
    :cond_b
    if-eqz v29, :cond_c

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v72, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 1362
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    move/from16 v72, v0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLeTextWeight(I)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    move-object/from16 v72, v0

    if-eqz v72, :cond_d

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    move-object/from16 v66, v0

    .line 1365
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mAutoLinkMask:I

    move/from16 v72, v0

    if-eqz v72, :cond_e

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mAutoLinkMask:I

    move/from16 v72, v0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1371
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1373
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1374
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1378
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1379
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v59

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1381
    if-eqz v59, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v72

    if-nez v72, :cond_f

    if-gez v36, :cond_f

    .line 1382
    const/16 v36, 0x3

    .line 1385
    :cond_f
    packed-switch v36, :pswitch_data_2

    .line 1408
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-boolean v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    move/from16 v72, v0

    if-eqz v72, :cond_10

    .line 1409
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1410
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1413
    :cond_10
    if-eqz v63, :cond_33

    .end local v63    # "textColor":Landroid/content/res/ColorStateList;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1414
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1416
    if-eqz v64, :cond_11

    .line 1417
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1420
    :cond_11
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v72, v0

    if-eqz v72, :cond_12

    .line 1423
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1424
    .local v21, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 1425
    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v72, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    move/from16 v73, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v74

    move/from16 v0, v72

    move-object/from16 v1, v21

    move/from16 v2, v73

    move-object/from16 v3, v74

    invoke-static {v0, v1, v2, v3}, Lcom/letv/leui/util/LeTypedValue;->getLeCustomedTextSize(FLandroid/util/DisplayMetrics;ILandroid/content/res/Resources;)F

    move-result v61

    .line 1426
    .local v61, "temp":F
    const/high16 v72, 0x3f000000    # 0.5f

    add-float v72, v72, v61

    move/from16 v0, v72

    float-to-int v0, v0

    move/from16 v67, v0

    .line 1429
    .end local v21    # "dm":Landroid/util/DisplayMetrics;
    .end local v61    # "temp":F
    :cond_12
    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v72, v0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1430
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1431
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1432
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1434
    if-eqz v7, :cond_13

    .line 1435
    new-instance v72, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v73

    invoke-direct/range {v72 .. v73}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1438
    :cond_13
    if-nez v52, :cond_14

    if-nez v53, :cond_14

    if-nez v71, :cond_14

    if-eqz v50, :cond_34

    .line 1439
    :cond_14
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1440
    const/16 v69, 0x3

    .line 1447
    :cond_15
    :goto_b
    const/16 v72, -0x1

    move/from16 v0, v69

    move/from16 v1, v72

    if-eq v0, v1, :cond_16

    if-nez v40, :cond_16

    .line 1448
    const/16 v39, 0x0

    .line 1450
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v69

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    if-eqz v72, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeFixedFontFamily:Ljava/lang/String;

    move-object/from16 v72, v0

    if-eqz v72, :cond_17

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeFixedFontFamily:Ljava/lang/String;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    invoke-static/range {v72 .. v73}, Landroid/graphics/Typeface;->createEUIInternal(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1458
    :cond_17
    if-eqz v58, :cond_18

    .line 1459
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1462
    :cond_18
    if-ltz v48, :cond_35

    .line 1463
    const/16 v72, 0x1

    move/from16 v0, v72

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    new-instance v74, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v74

    move/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v74, v72, v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1468
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1469
    if-eqz v42, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1476
    :cond_19
    sget-object v72, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v72

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v72, v0

    if-nez v72, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v72

    if-eqz v72, :cond_36

    :cond_1a
    const/16 v38, 0x1

    .line 1480
    .local v38, "focusable":Z
    :goto_d
    if-nez v38, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v72

    if-eqz v72, :cond_37

    :cond_1b
    const/16 v18, 0x1

    .line 1481
    .local v18, "clickable":Z
    :goto_e
    if-nez v38, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v72

    if-eqz v72, :cond_38

    :cond_1c
    const/16 v47, 0x1

    .line 1483
    .local v47, "longClickable":Z
    :goto_f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v49

    .line 1484
    const/16 v43, 0x0

    :goto_10
    move/from16 v0, v43

    move/from16 v1, v49

    if-ge v0, v1, :cond_39

    .line 1485
    move/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1487
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    .line 1484
    :goto_11
    add-int/lit8 v43, v43, 0x1

    goto :goto_10

    .line 1217
    .end local v10    # "attr":I
    .end local v18    # "clickable":Z
    .end local v38    # "focusable":Z
    .end local v47    # "longClickable":Z
    .end local v50    # "numberPasswordInputType":Z
    .end local v53    # "passwordInputType":Z
    .end local v71    # "webPasswordInputType":Z
    .restart local v63    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1d
    const/16 v53, 0x0

    goto/16 :goto_4

    .line 1219
    .restart local v53    # "passwordInputType":Z
    :cond_1e
    const/16 v71, 0x0

    goto/16 :goto_5

    .line 1221
    .restart local v71    # "webPasswordInputType":Z
    :cond_1f
    const/16 v50, 0x0

    goto/16 :goto_6

    .line 1229
    .restart local v50    # "numberPasswordInputType":Z
    :catch_2
    move-exception v37

    .line 1230
    .local v37, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v72, Ljava/lang/RuntimeException;

    move-object/from16 v0, v72

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v72

    .line 1236
    .end local v37    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v37

    .line 1237
    .local v37, "ex":Ljava/lang/InstantiationException;
    new-instance v72, Ljava/lang/RuntimeException;

    move-object/from16 v0, v72

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v72

    .line 1238
    .end local v37    # "ex":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v37

    .line 1239
    .local v37, "ex":Ljava/lang/IllegalAccessException;
    new-instance v72, Ljava/lang/RuntimeException;

    move-object/from16 v0, v72

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v72

    .line 1242
    .end local v37    # "ex":Ljava/lang/IllegalAccessException;
    :cond_20
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v72, v0

    invoke-interface/range {v72 .. v72}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v72

    goto/16 :goto_7

    .line 1245
    :catch_5
    move-exception v33

    .line 1246
    .local v33, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1248
    .end local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_21
    if-eqz v20, :cond_23

    .line 1249
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v73, v0

    if-eqz v45, :cond_22

    move/from16 v72, v45

    :goto_12
    move/from16 v0, v72

    move-object/from16 v1, v73

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_22
    const/16 v72, 0x1

    goto :goto_12

    .line 1256
    :cond_23
    if-eqz v45, :cond_25

    .line 1257
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v72

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1259
    invoke-static/range {v45 .. v45}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v72

    if-nez v72, :cond_24

    const/16 v59, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_24
    const/16 v59, 0x0

    goto :goto_13

    .line 1260
    :cond_25
    if-eqz v54, :cond_26

    .line 1261
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v45, 0x3

    move/from16 v0, v45

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1264
    :cond_26
    if-eqz v51, :cond_2b

    .line 1265
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v74, v0

    and-int/lit8 v72, v51, 0x2

    if-eqz v72, :cond_29

    const/16 v72, 0x1

    move/from16 v73, v72

    :goto_14
    and-int/lit8 v72, v51, 0x4

    if-eqz v72, :cond_2a

    const/16 v72, 0x1

    :goto_15
    move/from16 v0, v73

    move/from16 v1, v72

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1268
    const/16 v45, 0x2

    .line 1269
    and-int/lit8 v72, v51, 0x2

    if-eqz v72, :cond_27

    .line 1270
    move/from16 v0, v45

    or-int/lit16 v0, v0, 0x1000

    move/from16 v45, v0

    .line 1272
    :cond_27
    and-int/lit8 v72, v51, 0x4

    if-eqz v72, :cond_28

    .line 1273
    move/from16 v0, v45

    or-int/lit16 v0, v0, 0x2000

    move/from16 v45, v0

    .line 1275
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move/from16 v0, v45

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1266
    :cond_29
    const/16 v72, 0x0

    move/from16 v73, v72

    goto :goto_14

    :cond_2a
    const/16 v72, 0x0

    goto :goto_15

    .line 1276
    :cond_2b
    if-nez v12, :cond_2c

    const/16 v72, -0x1

    move/from16 v0, v72

    if-eq v11, v0, :cond_2d

    .line 1279
    :cond_2c
    const/16 v45, 0x1

    .line 1281
    packed-switch v11, :pswitch_data_3

    .line 1298
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1302
    .local v17, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move/from16 v0, v45

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1283
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_60
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1284
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v45

    or-int/lit16 v0, v0, 0x4000

    move/from16 v45, v0

    .line 1285
    goto :goto_16

    .line 1288
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_61
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1289
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v45

    or-int/lit16 v0, v0, 0x2000

    move/from16 v45, v0

    .line 1290
    goto :goto_16

    .line 1293
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1294
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v45

    or-int/lit16 v0, v0, 0x1000

    move/from16 v45, v0

    .line 1295
    goto :goto_16

    .line 1305
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v72

    if-eqz v72, :cond_2f

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    if-eqz v72, :cond_2e

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    .line 1311
    :cond_2e
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1313
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 1314
    :cond_2f
    if-eqz v34, :cond_30

    .line 1315
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v73

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    move/from16 v0, v73

    move-object/from16 v1, v72

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1319
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    if-eqz v72, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1321
    :cond_31
    packed-switch v15, :pswitch_data_4

    goto/16 :goto_8

    .line 1323
    :pswitch_63
    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1324
    goto/16 :goto_8

    .line 1326
    :pswitch_64
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1327
    goto/16 :goto_8

    .line 1329
    :pswitch_65
    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1387
    :pswitch_66
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1390
    :pswitch_67
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1393
    :pswitch_68
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1396
    :pswitch_69
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v72

    if-eqz v72, :cond_32

    .line 1397
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1398
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1403
    :goto_17
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1400
    :cond_32
    const/16 v72, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1401
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    .line 1413
    :cond_33
    const/high16 v72, -0x1000000

    invoke-static/range {v72 .. v72}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    goto/16 :goto_a

    .line 1441
    .end local v63    # "textColor":Landroid/content/res/ColorStateList;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    if-eqz v72, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v72, v0

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xfff

    move/from16 v72, v0

    const/16 v73, 0x81

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_15

    .line 1444
    const/16 v69, 0x3

    goto/16 :goto_b

    .line 1465
    :cond_35
    sget-object v72, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_c

    .line 1479
    :cond_36
    const/16 v38, 0x0

    goto/16 :goto_d

    .line 1480
    .restart local v38    # "focusable":Z
    :cond_37
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 1481
    .restart local v18    # "clickable":Z
    :cond_38
    const/16 v47, 0x0

    goto/16 :goto_f

    .line 1489
    .restart local v10    # "attr":I
    .restart local v47    # "longClickable":Z
    :sswitch_0
    move/from16 v0, v38

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 1490
    goto/16 :goto_11

    .line 1493
    :sswitch_1
    move/from16 v0, v18

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 1494
    goto/16 :goto_11

    .line 1497
    :sswitch_2
    move/from16 v0, v47

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v47

    goto/16 :goto_11

    .line 1501
    .end local v10    # "attr":I
    :cond_39
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1503
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1504
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1505
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    if-eqz v72, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1510
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v72

    if-nez v72, :cond_3b

    .line 1511
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1513
    :cond_3b
    return-void

    .line 760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 865
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_41
        :pswitch_10
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_36
        :pswitch_31
        :pswitch_1a
        :pswitch_1b
        :pswitch_2c
        :pswitch_26
        :pswitch_30
        :pswitch_2a
        :pswitch_18
        :pswitch_33
        :pswitch_32
        :pswitch_3b
        :pswitch_39
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_34
        :pswitch_4a
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_24
        :pswitch_4b
        :pswitch_4c
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_53
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_10
        :pswitch_10
        :pswitch_59
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_58
        :pswitch_5a
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_22
        :pswitch_23
        :pswitch_5e
        :pswitch_5f
        :pswitch_4e
    .end packed-switch

    .line 1385
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch

    .line 1487
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 1281
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    .line 1321
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_63
        :pswitch_64
        :pswitch_65
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 254
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .prologue
    .line 2725
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v9, :cond_1

    .line 2765
    :cond_0
    return-void

    .line 2729
    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v9, :cond_0

    .line 2730
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v7, v9, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2731
    .local v7, "tintList":Landroid/content/res/ColorStateList;
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v8, v9, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2732
    .local v8, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2733
    .local v2, "hasTint":Z
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2734
    .local v3, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v6

    .line 2736
    .local v6, "state":[I
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v9, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 2737
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_4

    .line 2736
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2741
    :cond_4
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v1, v9, :cond_3

    .line 2748
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2750
    if-eqz v2, :cond_5

    .line 2751
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2754
    :cond_5
    if-eqz v3, :cond_6

    .line 2755
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2760
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2761
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 7943
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 7944
    if-eqz p1, :cond_1

    .line 7945
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 7946
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7947
    if-eqz p2, :cond_0

    .line 7948
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7959
    :cond_0
    :goto_0
    return-void

    .line 7951
    :cond_1
    if-eqz p3, :cond_2

    .line 7952
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 7954
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 7955
    if-eqz p2, :cond_0

    .line 7956
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 6705
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6707
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 6708
    const/4 v1, 0x0

    .line 6711
    :cond_0
    move v2, v1

    .line 6713
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 6714
    const/high16 v1, 0x100000

    .line 6717
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6719
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/4 v11, 0x1

    .line 7424
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7425
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .line 7426
    .local v6, "line":I
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_0

    .line 7427
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 7430
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 7431
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 7432
    .local v1, "dir":I
    iget v12, p0, Landroid/widget/TextView;->mRight:I

    iget v13, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .line 7433
    .local v2, "hspace":I
    iget v12, p0, Landroid/widget/TextView;->mBottom:I

    iget v13, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .line 7434
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 7439
    .local v3, "ht":I
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_5

    .line 7440
    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7447
    :cond_1
    :goto_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_9

    .line 7453
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 7454
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7456
    .local v7, "right":I
    sub-int v12, v7, v5

    if-ge v12, v2, :cond_7

    .line 7457
    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    .line 7472
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    .line 7473
    const/4 v9, 0x0

    .line 7482
    .local v9, "scrolly":I
    :goto_3
    iget v12, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v8, v12, :cond_2

    iget v12, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v12, :cond_d

    .line 7483
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7486
    :goto_4
    return v11

    .line 7424
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_0

    .line 7440
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7442
    :cond_5
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_1

    .line 7443
    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_5
    goto :goto_1

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 7459
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    .line 7460
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7462
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7465
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a

    .line 7466
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7467
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .line 7468
    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7469
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7475
    :cond_b
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_c

    .line 7476
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7478
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7486
    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8076
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 8077
    .local v0, "width":I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 7357
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 7363
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 7364
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 7365
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 7372
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7376
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 7378
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 7380
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7404
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .line 7365
    .restart local v1    # "want":I
    .restart local v7    # "oldht":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 7386
    .restart local v2    # "hintWant":I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7388
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 7395
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7396
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 7400
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7401
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7402
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 7316
    const/4 v1, 0x0

    .line 7318
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 7320
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 7321
    const/4 v1, 0x1

    .line 7322
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7326
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 7327
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7329
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 7330
    const/4 v1, 0x1

    .line 7343
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 7344
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7347
    :cond_2
    return-void

    .line 7332
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 7333
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 7334
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7336
    .restart local v0    # "desiredHeight":I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 7337
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 6989
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7007
    :cond_0
    :goto_0
    return v2

    .line 6992
    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 6994
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 6995
    .local v1, "textWidth":F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 6996
    .local v0, "overflow":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29    # 0.07f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 6997
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 6998
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 7003
    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 7798
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 7799
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 7800
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 7802
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 7803
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 7804
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7805
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    .line 10100
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 10101
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10103
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 7011
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7012
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7013
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 7018
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 7019
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 7020
    const/4 v4, -0x1

    .line 7027
    :goto_1
    return v4

    .line 7018
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7023
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 7024
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7027
    :cond_2
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 6212
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    .line 6340
    :cond_0
    :goto_0
    return v3

    .line 6221
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6222
    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 6225
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 6282
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 6283
    const/4 v0, 0x1

    .line 6284
    .local v0, "doDown":Z
    if-eqz p3, :cond_8

    .line 6286
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6287
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 6289
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6290
    const/4 v0, 0x0

    .line 6291
    if-eqz v1, :cond_7

    .line 6298
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0

    .line 6227
    .end local v0    # "doDown":Z
    .end local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6232
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    .line 6235
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6238
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v5, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_0

    .line 6247
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6249
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    .line 6250
    goto :goto_0

    .line 6258
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6259
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    .line 6260
    goto/16 :goto_0

    .line 6266
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6267
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    .line 6268
    goto/16 :goto_0

    .line 6275
    :sswitch_3
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    .line 6276
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto/16 :goto_0

    .line 6298
    .restart local v0    # "doDown":Z
    .restart local v1    # "handled":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6302
    .end local v1    # "handled":Z
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 6303
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6304
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 6306
    .restart local v1    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6307
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 6308
    if-eqz v1, :cond_9

    move v3, v5

    goto/16 :goto_0

    .line 6294
    .end local v1    # "handled":Z
    :catch_0
    move-exception v2

    .line 6298
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 6315
    .end local v0    # "doDown":Z
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_c

    .line 6316
    const/4 v0, 0x1

    .line 6317
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_a

    .line 6319
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 6321
    .restart local v1    # "handled":Z
    const/4 v0, 0x0

    .line 6322
    if-nez v1, :cond_0

    .line 6330
    .end local v1    # "handled":Z
    :cond_a
    :goto_2
    if-eqz v0, :cond_c

    .line 6331
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6332
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_b

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 6333
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 6335
    :cond_b
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 6340
    .end local v0    # "doDown":Z
    :cond_c
    iget-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v2, :cond_d

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_3
    move v3, v2

    goto/16 :goto_0

    :cond_d
    move v2, v4

    goto :goto_3

    .line 6325
    .restart local v0    # "doDown":Z
    :catch_1
    move-exception v2

    goto :goto_2

    .line 6225
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .prologue
    .line 10114
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 10115
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 10117
    :cond_0
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1916
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1917
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1918
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1919
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1925
    :goto_0
    return-void

    .line 1921
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1922
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1923
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomSheet()Lcom/letv/leui/text/LeTextViewBottomSheet;
    .locals 2

    .prologue
    .line 10830
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    if-nez v0, :cond_0

    .line 10831
    new-instance v0, Lcom/letv/leui/text/LeTextViewBottomSheet;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeTextViewBottomSheet;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    .line 10832
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    new-instance v1, Landroid/widget/TextView$4;

    invoke-direct {v1, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeTextViewBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10844
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    return-object v0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5201
    const/4 v4, 0x0

    .line 5202
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5204
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5205
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5206
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5209
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 5210
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5211
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5213
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5214
    const/16 v5, 0x30

    if-ne v1, v5, :cond_2

    .line 5215
    sub-int v4, v0, v3

    .line 5220
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5217
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5170
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5171
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5174
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5170
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    .line 5171
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7253
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    .line 7259
    if-nez p1, :cond_0

    .line 7260
    const/4 v0, 0x0

    .line 7308
    :goto_0
    return v0

    .line 7263
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7264
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7265
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7267
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7268
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 7269
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7270
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7273
    :cond_1
    add-int/2addr v0, v3

    .line 7275
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 7280
    if-eqz p2, :cond_3

    .line 7281
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 7282
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7284
    if-eqz v1, :cond_2

    .line 7285
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7286
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7289
    :cond_2
    add-int/2addr v0, v3

    .line 7290
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7297
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 7298
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 7299
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7306
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7308
    goto :goto_0

    .line 7294
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 7302
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getFudgedPaddingRight()I
    .locals 4

    .prologue
    .line 5469
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 5470
    .local v0, "cursorWidth":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 7788
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 7793
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 7794
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7795
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6723
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6769
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6772
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 6725
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 6744
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6745
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6727
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6729
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .line 6727
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 6731
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6733
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .line 6731
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 6735
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6736
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6738
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6739
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6741
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6742
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6749
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6750
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6752
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 6753
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6755
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 6756
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6758
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 6760
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_3
    goto :goto_0

    .line 6758
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 6762
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 6764
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_4
    goto :goto_0

    .line 6762
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_4

    .line 6723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6725
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 8945
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8946
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 8949
    .end local p2    # "def":I
    :goto_0
    return p2

    .restart local p2    # "def":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 8911
    if-nez p1, :cond_0

    .line 8913
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 8920
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8921
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 8922
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    .line 8923
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 8924
    .local v1, "ap":I
    if-eqz v1, :cond_1

    .line 8925
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 8927
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 8928
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 8931
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8933
    return-object v3
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 9028
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 9031
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 5664
    const/4 v0, 0x0

    .line 5665
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 5667
    .local v2, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 5668
    .local v5, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5671
    .local v4, "selEnd":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/letv/leui/text/LeSelection;->getURLSpanPos(Ljava/lang/CharSequence;)I

    move-result v6

    .line 5672
    .local v6, "urlPos":I
    if-eq v5, v4, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    if-ne v6, v5, :cond_5

    if-ltz v5, :cond_5

    :cond_0
    if-ltz v5, :cond_5

    .line 5675
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_5

    if-eq v6, v5, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5677
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_2

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5678
    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5680
    if-ne v6, v5, :cond_4

    .line 5681
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v4, v8}, Landroid/text/Layout;->getRoundSelectionPath(IILandroid/graphics/Path;)V

    .line 5682
    iget-object v7, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v7, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5692
    :cond_3
    :goto_0
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5693
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5694
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v1, v0

    .line 5733
    .end local v0    # "highlight":Landroid/graphics/Path;
    .local v1, "highlight":Landroid/graphics/Path;
    :goto_1
    return-object v1

    .line 5683
    .end local v1    # "highlight":Landroid/graphics/Path;
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5684
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v9, v9, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    int-to-float v9, v9

    invoke-virtual {v7, v5, v4, v8, v9}, Landroid/text/Layout;->getSectionSelectionPath(IILandroid/graphics/Path;F)V

    .line 5686
    iget-object v7, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v3, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    .line 5687
    .local v3, "sectionBoundPaint":Landroid/graphics/Paint;
    iget-object v7, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v7, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5688
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5689
    iget-object v7, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v7, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5690
    iget v7, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5700
    .end local v3    # "sectionBoundPaint":Landroid/graphics/Paint;
    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_6
    if-ltz v5, :cond_9

    .line 5701
    if-ne v5, v4, :cond_a

    .line 5702
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v10, v7, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    .line 5705
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_8

    .line 5706
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_7

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5707
    :cond_7
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5708
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v5, v8, v9}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5709
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 5710
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5714
    :cond_8
    iget v7, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5715
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5716
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_9
    :goto_2
    move-object v1, v0

    .line 5733
    .end local v0    # "highlight":Landroid/graphics/Path;
    .restart local v1    # "highlight":Landroid/graphics/Path;
    goto/16 :goto_1

    .line 5719
    .end local v1    # "highlight":Landroid/graphics/Path;
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_a
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_c

    .line 5720
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_b

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5721
    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 5722
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v5, v4, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5723
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5727
    :cond_c
    iget v7, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5728
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5730
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_2
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5273
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 5274
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5275
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5276
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 5278
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 4619
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

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
    .line 4720
    and-int/lit16 v0, p0, 0xfff

    .line 4722
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

.method private isShowingHint()Z
    .locals 1

    .prologue
    .line 7417
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 4731
    and-int/lit16 v0, p0, 0xfff

    .line 4733
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

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 21
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 6915
    const/4 v2, 0x0

    .line 6916
    .local v2, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_4

    .line 6922
    new-instance v2, Landroid/text/DynamicLayout;

    .end local v2    # "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBreakStrategy:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v6

    if-nez v6, :cond_3

    move-object/from16 v14, p6

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingVertical:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectedURLTextColor:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    move/from16 v19, v0

    move/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v15, p3

    invoke-direct/range {v2 .. v19}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;IIIIZ)V

    .line 6968
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 6969
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p1

    invoke-static {v3, v4, v5, v6, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v20

    .line 6977
    .local v20, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_1

    .line 6978
    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaximum:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 6983
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 6985
    .end local v20    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2
    return-object v2

    .line 6922
    .end local v2    # "result":Landroid/text/Layout;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 6930
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_4
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 6931
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v3, v4, v5, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6932
    if-eqz p2, :cond_5

    .line 6933
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6937
    :cond_5
    if-eqz p2, :cond_0

    .line 6938
    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_8

    if-eqz p6, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v3, v0, :cond_8

    .line 6940
    :cond_6
    if-eqz p7, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_7

    .line 6941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .line 6950
    :goto_3
    if-eqz p7, :cond_0

    move-object v3, v2

    .line 6951
    check-cast v3, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_1

    .line 6945
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    goto :goto_3

    .line 6953
    :cond_8
    if-eqz p5, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    .line 6954
    if-eqz p7, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_9

    .line 6955
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    goto/16 :goto_1

    .line 6960
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    goto/16 :goto_1

    .line 6978
    .restart local v20    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_a
    const v3, 0x7fffffff

    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6685
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 6686
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6688
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 6689
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6692
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6694
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6697
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6698
    :cond_2
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1516
    if-nez p1, :cond_1

    .line 1517
    const/4 v1, 0x0

    .line 1523
    :cond_0
    return-object v1

    .line 1519
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 1520
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1521
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private paste(IIZ)V
    .locals 9
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    .prologue
    .line 9837
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 9839
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 9840
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_5

    .line 9841
    const/4 v2, 0x0

    .line 9842
    .local v2, "didFirst":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 9844
    if-eqz p3, :cond_1

    .line 9845
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 9851
    .local v4, "paste":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v4, :cond_0

    .line 9852
    if-nez v2, :cond_3

    .line 9853
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9854
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9855
    const/4 v2, 0x1

    .line 9842
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9848
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9849
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "paste":Ljava/lang/CharSequence;
    :goto_3
    goto :goto_1

    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v5

    goto :goto_3

    .line 9857
    .end local v5    # "text":Ljava/lang/CharSequence;
    .restart local v4    # "paste":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    const-string v8, "\n"

    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9858
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-interface {v6, v7, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 9862
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9863
    const-wide/16 v6, 0x0

    sput-wide v6, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9865
    .end local v2    # "didFirst":Z
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    .line 5339
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 5340
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5343
    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 8228
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 8239
    :cond_0
    return-void

    .line 8229
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8231
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 8232
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 8233
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8234
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8235
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8236
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_0

    if-eq v3, p2, :cond_0

    .line 8237
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6542
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 6543
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 6544
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 6545
    add-int/lit8 v0, v0, -0x1

    .line 6546
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 6548
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 5103
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 5104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 5105
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5107
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8213
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8214
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8215
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8216
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8217
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8222
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8223
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8224
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v4, 0x0

    .line 5132
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    .line 5133
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 5134
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    .line 5135
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .line 5136
    .local v2, "num":I
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5137
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 5138
    :cond_1
    if-lez v2, :cond_5

    .line 5139
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 5141
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5142
    const/4 v2, 0x0

    .line 5143
    if-eqz v3, :cond_2

    .line 5144
    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v1, v4

    .line 5145
    add-int/lit8 v2, v2, 0x1

    .line 5147
    :cond_2
    if-eqz v0, :cond_3

    .line 5148
    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    .line 5151
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5156
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :goto_1
    return-void

    :cond_4
    move v3, v4

    .line 5133
    goto :goto_0

    .line 5155
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4751
    and-int/lit8 v2, p1, 0xf

    .line 4753
    .local v2, "cls":I
    if-ne v2, v4, :cond_4

    .line 4754
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    move v0, v4

    .line 4756
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 4757
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 4765
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 4787
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 4788
    if-eqz p2, :cond_a

    .line 4789
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4790
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 4794
    :goto_3
    return-void

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_0
    move v0, v5

    .line 4754
    goto :goto_0

    .line 4758
    .restart local v0    # "autotext":Z
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 4759
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4760
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 4761
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4763
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4766
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 4767
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    .line 4770
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 4771
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 4779
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 4780
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4773
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 4774
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4776
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 4777
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4782
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 4783
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4785
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4792
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 4771
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 7931
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7933
    if-eqz p1, :cond_1

    .line 7934
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 7939
    :cond_0
    :goto_0
    return-void

    .line 7936
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 1867
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1878
    :cond_0
    :goto_0
    return-void

    .line 1869
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1870
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_0

    .line 1871
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1872
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    .line 1873
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1876
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 9882
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 9884
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9886
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 3014
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3017
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3018
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3019
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3020
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3023
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1593
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v5

    .line 1594
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1595
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1596
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1597
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1599
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 1600
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1601
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1602
    .local v3, "state":[I
    if-eqz p1, :cond_4

    .line 1603
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1604
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1605
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1608
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1609
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1610
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1614
    :goto_1
    if-eqz p2, :cond_5

    .line 1615
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1616
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1617
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1618
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1620
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1621
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1622
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1626
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 1627
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1628
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 1630
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    move v2, v4

    .line 1593
    goto :goto_0

    .line 1612
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1624
    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4328
    if-nez p1, :cond_0

    .line 4329
    const-string p1, ""

    .line 4333
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    if-lez v4, :cond_3

    .line 4334
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_9

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    iput-object v4, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 4336
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-nez v4, :cond_2

    .line 4337
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    .line 4341
    :cond_2
    :goto_1
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v5, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/letv/leui/util/LeTextUtils;->convertCJKTypeface(Landroid/text/Spannable;Ljava/lang/String;F)Landroid/text/Spannable;

    move-result-object p1

    .line 4348
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4349
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4352
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 4354
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_7

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_7

    .line 4356
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4357
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4358
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4364
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    if-eqz v4, :cond_6

    .line 4365
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4366
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4369
    :cond_6
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4372
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4373
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v14, :cond_c

    .line 4374
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4375
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_8

    .line 4376
    move-object/from16 p1, v16

    .line 4373
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v4, p2

    .line 4334
    goto/16 :goto_0

    .line 4337
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_1

    .line 4360
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4361
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_2

    .line 4380
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_c
    if-eqz p3, :cond_d

    .line 4381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_13

    .line 4382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4383
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4389
    :cond_d
    :goto_4
    const/4 v15, 0x0

    .line 4391
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_e

    .line 4392
    const/4 v15, 0x1

    .line 4395
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_f

    if-eqz v15, :cond_14

    .line 4397
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4398
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 4399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4400
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4401
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4402
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4403
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4410
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_12

    .line 4413
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_11

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_17

    :cond_11
    move-object/from16 v17, p1

    .line 4414
    check-cast v17, Landroid/text/Spannable;

    .line 4421
    .local v17, "s2":Landroid/text/Spannable;
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4422
    move-object/from16 p1, v17

    .line 4423
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_18

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4430
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4434
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_12

    .line 4435
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4440
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_12
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 4441
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4443
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_19

    .line 4444
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 4449
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4451
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_1e

    move-object/from16 v18, p1

    .line 4452
    check-cast v18, Landroid/text/Spannable;

    .line 4455
    .local v18, "sp":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4456
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4457
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_1a

    .line 4458
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4457
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 4385
    .end local v11    # "count":I
    .end local v15    # "needEditableForNotification":Z
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v20    # "textLength":I
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_13
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_4

    .line 4404
    .restart local v15    # "needEditableForNotification":Z
    :cond_14
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_16

    .line 4405
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_5

    .line 4406
    :cond_16
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_10

    .line 4407
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_5

    .line 4416
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_6

    .line 4423
    :cond_18
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_7

    .line 4446
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 4461
    .restart local v11    # "count":I
    .restart local v18    # "sp":Landroid/text/Spannable;
    .restart local v20    # "textLength":I
    .restart local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1b

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4463
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4466
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4468
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_1d

    .line 4469
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4472
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_1e

    .line 4473
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4480
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 4484
    .end local v11    # "count":I
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_1f

    .line 4485
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4488
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 4489
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4491
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 4493
    if-eqz v15, :cond_20

    .line 4494
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 4498
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4499
    :cond_21
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 2
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1558
    iput-object p1, p0, Landroid/widget/TextView;->mLeFontFamily:Ljava/lang/String;

    .line 1559
    iput p3, p0, Landroid/widget/TextView;->mStyleIndex:I

    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 1563
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1567
    iput-object v1, p0, Landroid/widget/TextView;->mUserSetTypeface:Landroid/graphics/Typeface;

    .line 1590
    :goto_0
    return-void

    .line 1572
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1586
    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1588
    iput-object v1, p0, Landroid/widget/TextView;->mUserSetTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1574
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1575
    goto :goto_1

    .line 1578
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1579
    goto :goto_1

    .line 1582
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 1572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareSelectedText()V
    .locals 4

    .prologue
    .line 9868
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 9869
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9870
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9871
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9872
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9873
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9874
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9879
    .end local v1    # "sharingIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6175
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6192
    :cond_0
    :goto_0
    return v1

    .line 6179
    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 6180
    goto :goto_0

    .line 6183
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 6185
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 6186
    .local v0, "variation":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 6188
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6200
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    .line 6202
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 6203
    .local v0, "variation":I
    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    .line 6205
    :cond_0
    const/4 v1, 0x0

    .line 6208
    .end local v0    # "variation":I
    :cond_1
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9139
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8084
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8115
    :cond_0
    :goto_0
    return-void

    .line 8086
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8091
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    if-eqz v1, :cond_3

    .line 8092
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8094
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    goto :goto_0

    .line 8099
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8102
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_6

    .line 8103
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8104
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8105
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8106
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8107
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8108
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8109
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8112
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_7

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8113
    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto/16 :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 8141
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 8142
    if-eqz p1, :cond_1

    .line 8143
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8148
    :cond_0
    :goto_0
    return-void

    .line 8145
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 8119
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    if-eqz v1, :cond_0

    .line 8120
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8121
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->stop()V

    .line 8125
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8126
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 8129
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 8130
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8131
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8132
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8133
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8134
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8135
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8136
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8138
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_2
    return-void
.end method

.method private unregisterForPreDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5346
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5347
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5348
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5349
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4049
    const/4 v1, 0x0

    .line 4050
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4051
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 4052
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 4053
    const/4 v1, 0x1

    .line 4055
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 4056
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4057
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 4058
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 4059
    const/4 v1, 0x1

    .line 4062
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 4063
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4064
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    .line 4065
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 4066
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4067
    const/4 v1, 0x1

    .line 4071
    :cond_2
    if-eqz v1, :cond_4

    .line 4073
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4074
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4076
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    .line 9081
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 9087
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    .line 9090
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9092
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9094
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 9095
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 9099
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 9100
    return-void

    .line 9097
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8190
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8194
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8195
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4032
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 4033
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4041
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 4042
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4045
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 4046
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 6647
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 6648
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 36
    .param p1, "offset"    # I

    .prologue
    .line 7495
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 7496
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 7497
    const/4 v5, 0x0

    .line 7710
    :cond_0
    :goto_0
    return v5

    .line 7499
    :cond_1
    const/4 v5, 0x0

    .line 7501
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    .line 7503
    .local v20, "layout":Landroid/text/Layout;
    :goto_1
    if-eqz v20, :cond_0

    .line 7505
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    .line 7509
    .local v22, "line":I
    sget-object v31, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    .line 7524
    const/4 v14, 0x0

    .line 7529
    .local v14, "grav":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v25

    .line 7530
    .local v25, "selectionStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v24

    .line 7531
    .local v24, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v31, v0

    sget-object v32, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_12

    if-nez v24, :cond_2

    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_12

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v31

    move/from16 v0, v24

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v31

    if-eqz v31, :cond_12

    const/16 v19, 0x1

    .line 7533
    .local v19, "isEnd":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    .line 7534
    .local v8, "cursorWidth":I
    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    move/from16 v31, v0

    add-int v7, v8, v31

    .line 7536
    .local v7, "cursorOffset":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Editor;->getInsertHandleHeight()I

    move-result v13

    .line 7549
    .local v13, "extraHeight":I
    :goto_5
    if-lez v14, :cond_15

    const/4 v6, 0x1

    .line 7551
    .local v6, "clamped":Z
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 7554
    .local v30, "x":I
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v31

    sub-int v26, v31, v13

    .line 7555
    .local v26, "top":I
    add-int/lit8 v31, v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v31

    add-int v4, v31, v13

    .line 7558
    .local v4, "bottom":I
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v21, v0

    .line 7559
    .local v21, "left":I
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v23, v0

    .line 7560
    .local v23, "right":I
    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getHeight()I

    move-result v18

    .line 7562
    .local v18, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v32

    sub-int v17, v31, v32

    .line 7563
    .local v17, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v32

    sub-int v29, v31, v32

    .line 7564
    .local v29, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v31, v0

    if-nez v31, :cond_3

    sub-int v31, v23, v21

    move/from16 v0, v31

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move/from16 v0, v23

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 7566
    add-int v31, v21, v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 7569
    :cond_3
    sub-int v31, v4, v26

    div-int/lit8 v16, v31, 0x2

    .line 7570
    .local v16, "hslack":I
    move/from16 v28, v16

    .line 7572
    .local v28, "vslack":I
    div-int/lit8 v31, v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_4

    .line 7573
    div-int/lit8 v28, v29, 0x4

    .line 7574
    :cond_4
    div-int/lit8 v31, v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 7575
    div-int/lit8 v16, v17, 0x4

    .line 7577
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7578
    .local v15, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    .line 7580
    .local v27, "vs":I
    sub-int v31, v26, v27

    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 7581
    sub-int v27, v26, v28

    .line 7582
    :cond_6
    sub-int v31, v4, v27

    sub-int v32, v29, v28

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7

    .line 7583
    sub-int v31, v29, v28

    sub-int v27, v4, v31

    .line 7584
    :cond_7
    sub-int v31, v18, v27

    move/from16 v0, v31

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 7585
    sub-int v27, v18, v29

    .line 7586
    :cond_8
    rsub-int/lit8 v31, v27, 0x0

    if-lez v31, :cond_9

    .line 7587
    const/16 v27, 0x0

    .line 7589
    :cond_9
    if-eqz v14, :cond_b

    .line 7590
    sub-int v31, v30, v15

    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 7591
    sub-int v15, v30, v16

    .line 7593
    :cond_a
    sub-int v31, v30, v15

    sub-int v32, v17, v16

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_b

    .line 7594
    sub-int v31, v17, v16

    sub-int v15, v30, v31

    .line 7600
    :cond_b
    if-gez v14, :cond_16

    .line 7601
    sub-int v31, v21, v15

    if-lez v31, :cond_c

    .line 7602
    move/from16 v15, v21

    .line 7603
    :cond_c
    sub-int v31, v23, v15

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 7606
    sub-int v31, v23, v17

    add-int v15, v31, v7

    .line 7666
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v15, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v31, v0

    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    .line 7667
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    if-nez v31, :cond_20

    .line 7668
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7689
    :goto_8
    const/4 v5, 0x1

    .line 7692
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 7700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    if-nez v31, :cond_10

    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7701
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    add-int/lit8 v32, v30, -0x2

    add-int/lit8 v33, v30, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v26

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Rect;->offset(II)V

    .line 7705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 7706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 7501
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v7    # "cursorOffset":I
    .end local v8    # "cursorWidth":I
    .end local v13    # "extraHeight":I
    .end local v14    # "grav":I
    .end local v15    # "hs":I
    .end local v16    # "hslack":I
    .end local v17    # "hspace":I
    .end local v18    # "ht":I
    .end local v19    # "isEnd":Z
    .end local v20    # "layout":Landroid/text/Layout;
    .end local v21    # "left":I
    .end local v22    # "line":I
    .end local v23    # "right":I
    .end local v24    # "selectionEnd":I
    .end local v25    # "selectionStart":I
    .end local v26    # "top":I
    .end local v27    # "vs":I
    .end local v28    # "vslack":I
    .end local v29    # "vspace":I
    .end local v30    # "x":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 7511
    .restart local v20    # "layout":Landroid/text/Layout;
    .restart local v22    # "line":I
    :pswitch_0
    const/4 v14, 0x1

    .line 7512
    .restart local v14    # "grav":I
    goto/16 :goto_2

    .line 7514
    .end local v14    # "grav":I
    :pswitch_1
    const/4 v14, -0x1

    .line 7515
    .restart local v14    # "grav":I
    goto/16 :goto_2

    .line 7517
    .end local v14    # "grav":I
    :pswitch_2
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    .line 7518
    .restart local v14    # "grav":I
    goto/16 :goto_2

    .line 7520
    .end local v14    # "grav":I
    :pswitch_3
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v31

    move/from16 v0, v31

    neg-int v14, v0

    .line 7521
    .restart local v14    # "grav":I
    goto/16 :goto_2

    .line 7531
    .restart local v24    # "selectionEnd":I
    .restart local v25    # "selectionStart":I
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 7534
    .restart local v8    # "cursorWidth":I
    .restart local v19    # "isEnd":Z
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 7536
    .restart local v7    # "cursorOffset":I
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 7549
    .restart local v13    # "extraHeight":I
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 7609
    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v15    # "hs":I
    .restart local v16    # "hslack":I
    .restart local v17    # "hspace":I
    .restart local v18    # "ht":I
    .restart local v21    # "left":I
    .restart local v23    # "right":I
    .restart local v26    # "top":I
    .restart local v27    # "vs":I
    .restart local v28    # "vslack":I
    .restart local v29    # "vspace":I
    .restart local v30    # "x":I
    :cond_16
    if-lez v14, :cond_19

    .line 7610
    sub-int v31, v23, v15

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 7613
    sub-int v31, v23, v17

    add-int v15, v31, v7

    .line 7616
    :cond_17
    sub-int v31, v21, v15

    if-lez v31, :cond_18

    .line 7617
    move/from16 v15, v21

    .line 7619
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    if-eqz v20, :cond_d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    if-nez v24, :cond_d

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v31, v0

    sget-object v32, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 7622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v15, v0

    goto/16 :goto_7

    .line 7626
    :cond_19
    sub-int v31, v23, v21

    move/from16 v0, v31

    move/from16 v1, v17

    if-gt v0, v1, :cond_1a

    .line 7630
    sub-int v31, v23, v21

    sub-int v31, v17, v31

    div-int/lit8 v31, v31, 0x2

    sub-int v15, v21, v31

    goto/16 :goto_7

    .line 7631
    :cond_1a
    sub-int v31, v23, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1b

    .line 7636
    sub-int v15, v23, v17

    goto/16 :goto_7

    .line 7637
    :cond_1b
    add-int v31, v21, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 7642
    move/from16 v15, v21

    goto/16 :goto_7

    .line 7643
    :cond_1c
    move/from16 v0, v21

    if-le v0, v15, :cond_1d

    .line 7647
    move/from16 v15, v21

    goto/16 :goto_7

    .line 7648
    :cond_1d
    add-int v31, v15, v17

    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 7652
    sub-int v15, v23, v17

    goto/16 :goto_7

    .line 7657
    :cond_1e
    sub-int v31, v30, v15

    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    .line 7658
    sub-int v15, v30, v16

    .line 7660
    :cond_1f
    sub-int v31, v30, v15

    sub-int v32, v17, v16

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_d

    .line 7661
    sub-int v31, v17, v16

    sub-int v15, v30, v31

    goto/16 :goto_7

    .line 7670
    :cond_20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v34, v0

    sub-long v10, v32, v34

    .line 7671
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v31, v0

    sub-int v9, v15, v31

    .line 7672
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v31, v0

    sub-int v12, v27, v31

    .line 7674
    .local v12, "dy":I
    const-wide/16 v32, 0xfa

    cmp-long v31, v10, v32

    if-lez v31, :cond_21

    .line 7675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9, v12}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getDuration()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7677
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7686
    :goto_9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_8

    .line 7679
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_22

    .line 7680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7683
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_9

    .line 7509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9775
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9783
    :cond_0
    :goto_0
    return v0

    .line 9779
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 9780
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9762
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9771
    :cond_0
    :goto_0
    return v0

    .line 9766
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 9768
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canPaste()Z
    .locals 2

    .prologue
    .line 9791
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canProcessText()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9800
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9809
    :cond_0
    :goto_0
    return v0

    .line 9805
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 9806
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 9758
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10612
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10620
    :cond_0
    :goto_0
    return v0

    .line 10616
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 10617
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canSelectAllText()Z
    .locals 2

    .prologue
    .line 9813
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelectText()Z
    .locals 1

    .prologue
    .line 9008
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canShare()Z
    .locals 1

    .prologue
    .line 9787
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method canShowClipboard()Z
    .locals 4

    .prologue
    .line 10594
    const/4 v0, 0x0

    .line 10596
    .local v0, "isPhoneLocked":Z
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 10597
    .local v1, "kMgr":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    .line 10598
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 10602
    .end local v1    # "kMgr":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 10600
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 9754
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 8753
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 8754
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 8755
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 8535
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 8536
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8538
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 8865
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 8866
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 8870
    :goto_0
    return v0

    .line 8866
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 8870
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 7777
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 7778
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7779
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 7780
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 7781
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 7782
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 7785
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 8883
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 8875
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8876
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 8878
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 9905
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 9907
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 9908
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 9909
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 9910
    return p1
.end method

.method public copyText(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 10777
    const/4 v2, 0x0

    .line 10778
    .local v2, "min":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 10780
    .local v1, "max":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10781
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10783
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10785
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10786
    return-void
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 7821
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 7823
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 7824
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7828
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 7830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7831
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 7832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7838
    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7839
    return-void

    .line 7836
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10050
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 10051
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 8748
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8455
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8457
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4099
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4101
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_1

    .line 4102
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 4103
    .local v4, "state":[I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4104
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4105
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4109
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 4080
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4081
    iget-object v5, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4084
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4087
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_5

    .line 4088
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 4089
    .local v4, "state":[I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 4090
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4091
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4089
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4095
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 10197
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 10199
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 10200
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string v3, "text:ellipsize"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10201
    const-string v1, "text:textSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 10202
    const-string v1, "text:scaledTextSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 10203
    const-string v1, "text:typefaceStyle"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10204
    const-string v1, "text:selectionStart"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10205
    const-string v1, "text:selectionEnd"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10206
    const-string v1, "text:curTextColor"

    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10207
    const-string v1, "text:text"

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10208
    const-string v1, "text:gravity"

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10209
    return-void

    .line 10200
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10207
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 6651
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 6652
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 6532
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6533
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 8888
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 8889
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8891
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 8892
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 8893
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8894
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8897
    .end local v0    # "searchedLowerCase":Ljava/lang/String;
    .end local v1    # "textLowerCase":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9146
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 10167
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 10152
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 2803
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    .line 6031
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6032
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 6035
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getBaselineOffset()I
    .locals 3

    .prologue
    .line 6039
    const/4 v0, 0x0

    .line 6040
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 6041
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6044
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6045
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 6048
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 5464
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    .prologue
    .line 3182
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method public getCJKFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10654
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getCJKTextSize()F
    .locals 1

    .prologue
    .line 10661
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    int-to-float v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 2651
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2652
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2592
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2593
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2594
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    .line 2596
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2610
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2611
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2612
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2617
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    aput-object v2, v1, v3

    aput-object v2, v1, v6

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1994
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1995
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1996
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    .line 1998
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2049
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2052
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 2054
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 2049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 2007
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2008
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2009
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    .line 2011
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 2020
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2021
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2022
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    .line 2024
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2034
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2037
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 2039
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    .line 2034
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1981
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1982
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1983
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    .line 1985
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 3290
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 9741
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 9704
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1710
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8021
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5051
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 2101
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 2102
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2128
    :cond_0
    :goto_0
    return v0

    .line 2105
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_2

    .line 2106
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2109
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2110
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 2113
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2114
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2115
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2116
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2118
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2122
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2123
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    .line 2124
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 2125
    :cond_4
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    .line 2128
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 2064
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 2065
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2091
    :cond_0
    :goto_0
    return v3

    .line 2068
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_2

    .line 2069
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2072
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2073
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 2076
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2077
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2078
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2079
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2081
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2085
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2086
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    .line 2088
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    .line 2089
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 2091
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6073
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6056
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6065
    :goto_0
    return v1

    .line 6058
    :cond_0
    const/4 v0, 0x0

    .line 6059
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 6060
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6063
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 6065
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 5164
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 5937
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    .line 5938
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5989
    :goto_0
    return-void

    .line 5942
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 5943
    .local v6, "selEnd":I
    if-gez v6, :cond_1

    .line 5944
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5948
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 5949
    .local v7, "selStart":I
    if-ltz v7, :cond_2

    if-lt v7, v6, :cond_4

    .line 5950
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5951
    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 5952
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 5953
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 5954
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 5981
    .end local v0    # "line":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 5982
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .line 5983
    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_3

    .line 5984
    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    .line 5986
    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 5987
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    .line 5988
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5956
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5957
    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5958
    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 5959
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 5960
    if-ne v2, v1, :cond_5

    .line 5961
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 5962
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5966
    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v8, :cond_7

    .line 5967
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5968
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 5969
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5970
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5972
    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    .line 5973
    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5974
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 5975
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 5976
    monitor-exit v9

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3153
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 4260
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 3620
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 3318
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4611
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1768
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3518
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    .line 5740
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 3675
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .prologue
    .line 3209
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 4866
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4855
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 4827
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    .line 7060
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5032
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 5042
    :cond_0
    :goto_0
    return-object v0

    .line 5033
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5034
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_2

    .line 5035
    if-eqz p1, :cond_0

    .line 5036
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5038
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 5039
    if-eqz p1, :cond_0

    .line 5040
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5042
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 4803
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 10110
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    .line 10124
    sparse-switch p1, :sswitch_data_0

    .line 10144
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10126
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 10127
    .local v1, "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10128
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .line 10130
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_0

    .line 10135
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v1    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 10136
    .restart local v1    # "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10137
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    .line 10139
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_0

    .line 10124
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public getLeCJKTextStyle()I
    .locals 1

    .prologue
    .line 10703
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeTextWeight()I

    move-result v0

    return v0
.end method

.method public getLeTextStyle()I
    .locals 1

    .prologue
    .line 10687
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeTextWeight()I

    move-result v0

    return v0
.end method

.method public getLeTextWeight()I
    .locals 1

    .prologue
    .line 10679
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 8774
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_3

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_3

    .line 8777
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v6}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8778
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v6}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8779
    iget-object v5, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v5, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v5}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->getScroll()F

    move-result v3

    .line 8780
    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    .line 8817
    .end local v3    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 8786
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_2

    .line 8787
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8788
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8789
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .line 8790
    .restart local v3    # "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    goto :goto_0

    .line 8794
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v3    # "scroll":F
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 8795
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 8796
    .local v1, "layoutDirection":I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 8797
    .local v0, "absoluteGravity":I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .line 8817
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_3
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .line 8801
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 8806
    :pswitch_3
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 8807
    .local v4, "textDirection":I
    if-eq v4, v9, :cond_0

    .line 8810
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto/16 :goto_0

    .line 8797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 5453
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 9914
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 9916
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 9917
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 9918
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 9919
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 9923
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 9924
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 9925
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 6009
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 6010
    if-eqz p2, :cond_0

    .line 6011
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6025
    :cond_0
    :goto_0
    return v2

    .line 6016
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 6018
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 6019
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 6020
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6022
    :cond_2
    if-eqz p2, :cond_3

    .line 6023
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6025
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 5996
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 4023
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 4009
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 3458
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    .line 8012
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    .line 3908
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 3791
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    .line 3762
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 3935
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    .line 3854
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 3734
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    .line 3706
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 3881
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 9929
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 9930
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 9898
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 9901
    :goto_0
    return v1

    .line 9899
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 9900
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 9901
    .local v1, "offset":I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 3421
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 3628
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4998
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 8822
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_3

    iget v9, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v9, v12, :cond_3

    .line 8825
    iget-object v9, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v9, v9, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v9, v9, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v9}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_1

    .line 8826
    iget-object v8, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v8, v8, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v8}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->getMaxFadeScroll()F

    move-result v4

    .line 8827
    .local v4, "maxFadeScroll":F
    iget-object v8, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v8, v8, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v8}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->getScroll()F

    move-result v5

    .line 8828
    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 8860
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 8831
    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8832
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8833
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .line 8834
    .restart local v4    # "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .line 8835
    .restart local v5    # "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 8836
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_3

    .line 8837
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 8838
    .local v1, "layoutDirection":I
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 8839
    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_0

    .line 8860
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_3
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_0

    .line 8841
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 8843
    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 8844
    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 8849
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_3
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 8850
    .local v6, "textDirection":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 8853
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 8839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 5475
    invoke-direct {p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 2958
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 7868
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7869
    const/4 v2, 0x0

    .line 7874
    :goto_0
    return-object v2

    .line 7872
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7873
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7874
    .local v0, "end":I
    if-le v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7854
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 7846
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 3413
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 3390
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 3401
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 3379
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9074
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9982
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9984
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 10007
    :goto_0
    return-object v1

    .line 9988
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 9991
    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9994
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 9988
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 9994
    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 9997
    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 9999
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10001
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10003
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10005
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10007
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 9991
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 9473
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9474
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9475
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9477
    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 3030
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 2949
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 5459
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 2179
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 2161
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 2137
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 2145
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 2153
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 2170
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9593
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3096
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2969
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 2970
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    .prologue
    .line 1781
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3469
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 3470
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 3472
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5178
    const/4 v4, 0x0

    .line 5179
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5181
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5182
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5183
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5186
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 5187
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5188
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5190
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5191
    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    .line 5192
    sub-int v4, v0, v3

    .line 5197
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5194
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .prologue
    .line 9113
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9114
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    .line 9116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6092
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 6112
    :cond_1
    :goto_0
    return v1

    .line 6096
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6097
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6098
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 6099
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 6102
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 6103
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6104
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 6105
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 6107
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6108
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    move v1, v2

    .line 6112
    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8311
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 8313
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 8314
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 8315
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 8317
    :cond_1
    if-eqz v0, :cond_2

    .line 8318
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 8319
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_4

    .line 8320
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8321
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 8326
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 8328
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 8329
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 8330
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8331
    return-void

    .line 8313
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_0

    .line 8323
    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8324
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 5567
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 4716
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 7861
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7862
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7864
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6362
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    .line 6363
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 6365
    :cond_0
    return-void
.end method

.method public invalidDisplayList(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10761
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10762
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 10764
    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    .line 5267
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5269
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 5270
    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    .prologue
    .line 5224
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 5225
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 5264
    :cond_0
    :goto_0
    return-void

    .line 5227
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 5228
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 5230
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    .line 5231
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    .line 5241
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 5242
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 5243
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5246
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 5249
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5251
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5255
    monitor-exit v6

    goto :goto_0

    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5257
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 5258
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5259
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5506
    const/4 v7, 0x0

    .line 5508
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5510
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    .line 5511
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    .line 5516
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5517
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    .line 5518
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 5519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 5520
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 5521
    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 5523
    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v9, v12

    .line 5524
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 5525
    const/4 v7, 0x1

    .line 5553
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 5554
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5559
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    .line 5560
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5562
    :cond_2
    return-void

    .line 5526
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 5527
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 5528
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 5529
    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 5531
    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 5532
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 5533
    const/4 v7, 0x1

    .line 5534
    goto :goto_0

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 5535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 5536
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 5537
    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 5539
    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 5540
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v10, v12

    .line 5541
    const/4 v7, 0x1

    .line 5542
    goto :goto_0

    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 5543
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 5544
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 5545
    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 5547
    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 5548
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 5549
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    .line 5284
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 5285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5336
    :goto_0
    return-void

    .line 5287
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5288
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 5296
    .local v10, "top":I
    if-lez v8, :cond_1

    .line 5297
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 5302
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 5303
    move v7, v8

    .line 5307
    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5310
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    .line 5311
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 5312
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 5313
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5314
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5311
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5305
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .line 5318
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 5319
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 5322
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    .line 5323
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 5324
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 5325
    .local v9, "right":I
    add-int/2addr v6, v4

    .line 5326
    add-int/2addr v9, v4

    .line 5333
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5329
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_4
    move v6, v4

    .line 5330
    .restart local v6    # "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9    # "right":I
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 10159
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 8072
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9960
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    .line 9965
    :cond_0
    :goto_0
    return v1

    .line 9961
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 9962
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    .line 9963
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 9965
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInExtractedMode()Z
    .locals 1

    .prologue
    .line 9060
    const/4 v0, 0x0

    return v0
.end method

.method public isInSelectionMode()Z
    .locals 1

    .prologue
    .line 10754
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 9496
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9497
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 5448
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowingHintExt()Z
    .locals 1

    .prologue
    .line 10646
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    .prologue
    .line 4615
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9653
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    .line 9660
    :cond_0
    :goto_0
    return v1

    .line 9654
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 9657
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    .line 9659
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 9660
    .local v0, "variation":I
    if-eqz v0, :cond_2

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    .line 8738
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 5585
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 5

    .prologue
    .line 5494
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5495
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v4, :cond_1

    .line 5496
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 5497
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 5498
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 5496
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5502
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 6784
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6787
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 6788
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 6790
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6792
    if-gez p1, :cond_0

    .line 6793
    const/16 p1, 0x0

    .line 6795
    :cond_0
    if-gez p2, :cond_1

    .line 6796
    const/16 p2, 0x0

    .line 6799
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 6800
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_11

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_11

    :cond_2
    const/16 v31, 0x1

    .line 6803
    .local v31, "testDirChange":Z
    :goto_0
    const/16 v29, 0x0

    .line 6804
    .local v29, "oldDir":I
    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v29

    .line 6805
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v7, 0x1

    .line 6806
    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_13

    const/16 v30, 0x1

    .line 6808
    .local v30, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6809
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 6811
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 6814
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5

    .line 6815
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 6818
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_14

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6820
    if-eqz v30, :cond_6

    .line 6821
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_15

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6823
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_16

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6827
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_17

    const/4 v7, 0x1

    .line 6828
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6830
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 6831
    if-eqz v7, :cond_7

    move/from16 p2, p1

    .line 6833
    :cond_7
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 6834
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 6836
    if-eqz p4, :cond_8

    .line 6837
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6841
    :cond_8
    if-eqz p4, :cond_a

    .line 6842
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_19

    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_19

    .line 6844
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_18

    .line 6845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6855
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6872
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_c

    .line 6873
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p2

    invoke-static {v2, v3, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v27

    .line 6881
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_b

    .line 6882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    :goto_9
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 6886
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6890
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_c
    if-nez p6, :cond_d

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_e

    .line 6891
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6894
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_f

    .line 6895
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_f

    .line 6896
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .line 6899
    .local v28, "height":I
    const/4 v2, -0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_1c

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_1c

    .line 6900
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6909
    .end local v28    # "height":I
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6910
    :cond_10
    return-void

    .line 6800
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "oldDir":I
    .end local v30    # "switchEllipsize":Z
    .end local v31    # "testDirChange":Z
    :cond_11
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 6805
    .restart local v29    # "oldDir":I
    .restart local v31    # "testDirChange":Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 6806
    .restart local v7    # "shouldEllipsize":Z
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 6818
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v30    # "switchEllipsize":Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 6821
    :cond_15
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    .line 6823
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 6827
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 6850
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6856
    :cond_19
    if-eqz v7, :cond_a

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_a

    .line 6857
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1a

    .line 6858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 6864
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 6882
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1b
    const v2, 0x7fffffff

    goto/16 :goto_9

    .line 6903
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_a
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 7722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 7723
    const/16 v17, 0x0

    .line 7772
    :goto_0
    return v17

    .line 7725
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 7726
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 7727
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    .line 7728
    const/16 v17, 0x0

    goto :goto_0

    .line 7733
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 7735
    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 7736
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 7737
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 7738
    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 7739
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 7740
    div-int/lit8 v15, v16, 0x4

    .line 7741
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7743
    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 7744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 7751
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 7752
    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7753
    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 7754
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 7757
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 7758
    .local v9, "lowChar":I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .line 7760
    .local v4, "highChar":I
    :goto_3
    move v10, v12

    .line 7761
    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    .line 7762
    move v10, v9

    .line 7767
    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    .line 7768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7769
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7745
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 7746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    .line 7757
    goto :goto_2

    .restart local v9    # "lowChar":I
    :cond_7
    move v4, v11

    .line 7758
    goto :goto_3

    .line 7763
    .restart local v4    # "highChar":I
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    .line 7764
    move v10, v4

    goto :goto_4

    .line 7772
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1531
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 1532
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 1533
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1534
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1536
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 1550
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1551
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1554
    :cond_1
    return-void

    .line 1538
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1539
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1544
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1546
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 1547
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5413
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5415
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 5417
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 5419
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    .line 5420
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5421
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5423
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 6660
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 6472
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "span"    # Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .prologue
    .line 10802
    const/4 v6, 0x0

    .line 10803
    .local v6, "handled":Z
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getText()Ljava/lang/String;

    move-result-object v7

    .line 10804
    .local v7, "pattern":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 10805
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getURLType()I

    move-result v1

    .line 10806
    .local v1, "type":I
    iget-object v0, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    if-eqz v0, :cond_0

    .line 10807
    iget-object v0, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    invoke-interface {v0, v7, v4, v1}, Landroid/widget/TextView$OnURLClickEventListener;->onClick(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 10810
    :cond_0
    if-nez v6, :cond_1

    .line 10811
    invoke-direct {p0}, Landroid/widget/TextView;->getBottomSheet()Lcom/letv/leui/text/LeTextViewBottomSheet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getStartOffset()I

    move-result v2

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getEndOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/text/LeTextViewBottomSheet;->show(IIILjava/lang/String;Ljava/lang/String;)V

    .line 10812
    invoke-virtual {p0}, Landroid/widget/TextView;->onCancelPendingInputEvents()V

    .line 10813
    const/4 v0, 0x1

    .line 10815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 6632
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 6643
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 6644
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2919
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2920
    iget-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    if-nez v0, :cond_0

    .line 2921
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 2925
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->leGlobalFont:I

    if-lez v0, :cond_2

    .line 2926
    sget-object v0, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 2927
    invoke-static {}, Landroid/graphics/Typeface;->updateEUITypeface()V

    .line 2930
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mUserSetTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    .line 2931
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/widget/TextView;->mLeFontFamily:Ljava/lang/String;

    iget v2, p0, Landroid/widget/TextView;->mStyleIndex:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2935
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_2

    .line 2936
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2937
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2938
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2942
    :cond_2
    return-void

    .line 2933
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/widget/TextView;->mUserSetTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 5637
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 5638
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 5644
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5649
    array-length v2, v0

    .line 5650
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5651
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    .line 5652
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 5653
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 5654
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 5660
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :goto_2
    return-object v3

    .line 5640
    .end local v0    # "drawableState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 5641
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 5650
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    move-object v3, v0

    .line 5660
    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x8000000

    .line 6477
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6478
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 6479
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6480
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_4

    .line 6481
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6482
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 6483
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 6484
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 6485
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 6489
    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6490
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6492
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6493
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6495
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 6497
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 6500
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6506
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6507
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6510
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6512
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6514
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 6515
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_6

    .line 6516
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 6517
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 6518
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 6519
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 6523
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v0

    .line 6487
    :cond_4
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 6504
    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 6523
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    .line 5428
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 5429
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5430
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5433
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 5435
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 5437
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 5438
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 9935
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9955
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 9937
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 9940
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 9944
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 9945
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 9949
    .end local v0    # "offset":I
    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 9935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5745
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5748
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5750
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    .line 5751
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    .line 5752
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    .line 5753
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .line 5754
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v34, v0

    .line 5755
    .local v34, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v35, v0

    .line 5756
    .local v35, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v32, v0

    .line 5757
    .local v32, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v27, v0

    .line 5758
    .local v27, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    .line 5759
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v36, v0

    .line 5760
    .local v36, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v24

    .line 5761
    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v30

    .line 5762
    .local v30, "offset":I
    if-eqz v24, :cond_f

    const/16 v28, 0x0

    .line 5763
    .local v28, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_10

    move/from16 v33, v30

    .line 5765
    .local v33, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .line 5766
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    .line 5772
    sub-int v2, v9, v36

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    .line 5773
    .local v39, "vspace":I
    sub-int v2, v32, v27

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    .line 5777
    .local v23, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 5778
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5779
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v2, v2, v34

    add-int v2, v2, v28

    int-to-float v2, v2

    add-int v3, v35, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v6, v39, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5782
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5788
    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 5789
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5790
    add-int v2, v34, v32

    sub-int v2, v2, v27

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v33

    int-to-float v2, v2

    add-int v3, v35, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v6, v39, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5793
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5799
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 5800
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5801
    add-int v2, v34, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v3, v3, v35

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5803
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5804
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5809
    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 5810
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5811
    add-int v2, v34, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v35, v9

    sub-int v3, v3, v36

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5814
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5815
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5819
    .end local v23    # "hspace":I
    .end local v39    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 5821
    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    .line 5822
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5825
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5827
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 5828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 5829
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 5832
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5835
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 5836
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 5838
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5843
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    .line 5844
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    .line 5846
    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    .line 5847
    .restart local v39    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v29, v2, v39

    .line 5849
    .local v29, "maxScrollY":I
    add-int v2, v16, v34

    int-to-float v11, v2

    .line 5850
    .local v11, "clipLeft":F
    if-nez v35, :cond_11

    const/4 v13, 0x0

    .line 5851
    .local v13, "clipTop":F
    :goto_2
    sub-int v2, v32, v27

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, v34

    int-to-float v12, v2

    .line 5852
    .local v12, "clipRight":F
    sub-int v2, v9, v36

    add-int v2, v2, v35

    move/from16 v0, v35

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    int-to-float v10, v2

    .line 5855
    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    .line 5856
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    .line 5857
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    .line 5859
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    .line 5860
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    .line 5863
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5865
    const/16 v38, 0x0

    .line 5866
    .local v38, "voffsetText":I
    const/16 v37, 0x0

    .line 5870
    .local v37, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    .line 5871
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v38

    .line 5872
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v37

    .line 5874
    :cond_9
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v38

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5876
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v26

    .line 5877
    .local v26, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v26

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 5878
    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    .line 5880
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_a

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 5882
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int v40, v2, v3

    .line 5883
    .local v40, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v31, v2, v3

    .line 5884
    .local v31, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v40, v31

    int-to-float v3, v3

    sub-float v20, v2, v3

    .line 5885
    .local v20, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5888
    .end local v20    # "dx":F
    .end local v31    # "padding":I
    .end local v40    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5889
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 5890
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5894
    .end local v20    # "dx":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v2}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v2}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 5896
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5901
    .end local v20    # "dx":F
    :cond_c
    sub-int v7, v37, v38

    .line 5903
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .line 5905
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v25, 0x1

    .line 5906
    .local v25, "isSectionMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_14

    .line 5907
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/Editor;->setSectionBoundPaint(Landroid/graphics/Paint;)V

    .line 5908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5920
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v20

    .line 5922
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5923
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5926
    .end local v20    # "dx":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v2}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5927
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v2}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->getGhostOffset()F

    move-result v20

    .line 5928
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5932
    .end local v20    # "dx":F
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5933
    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "isSectionMode":Z
    .end local v26    # "layoutDirection":I
    .end local v28    # "leftOffset":I
    .end local v29    # "maxScrollY":I
    .end local v33    # "rightOffset":I
    .end local v37    # "voffsetCursor":I
    .end local v38    # "voffsetText":I
    .end local v39    # "vspace":I
    :cond_f
    move/from16 v28, v30

    .line 5762
    goto/16 :goto_0

    .line 5763
    .restart local v28    # "leftOffset":I
    :cond_10
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 5850
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v29    # "maxScrollY":I
    .restart local v33    # "rightOffset":I
    .restart local v39    # "vspace":I
    :cond_11
    add-int v2, v22, v35

    int-to-float v13, v2

    goto/16 :goto_2

    .line 5905
    .end local v21    # "extendedPaddingBottom":I
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    .restart local v26    # "layoutDirection":I
    .restart local v37    # "voffsetCursor":I
    .restart local v38    # "voffsetText":I
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 5907
    .restart local v25    # "isSectionMode":Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 5910
    :cond_14
    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {v4, v2}, Landroid/text/Layout;->setSectionBoundPaint(Landroid/graphics/Paint;)V

    .line 5911
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_5

    .line 5910
    :cond_15
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    .line 4905
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 4906
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_5

    .line 4907
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_2

    .line 4908
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4974
    :cond_0
    :goto_1
    return-void

    .line 4905
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_0

    .line 4919
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_2
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 4920
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 4921
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_0

    .line 4922
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4924
    const-string v3, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus search returned a view that wasn\'t able to take focus! v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->debug()V

    .line 4928
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4934
    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 4935
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 4936
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_0

    .line 4937
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4939
    const-string v3, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus search returned a view that wasn\'t able to take focus! v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->debug()V

    .line 4943
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4949
    .end local v20    # "v":Landroid/view/View;
    :cond_4
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 4950
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 4951
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4952
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .line 4958
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 4959
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_0

    .line 4960
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4961
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4967
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 6668
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8473
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 8476
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8477
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 8478
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8482
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 8484
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8509
    :goto_0
    return-void

    .line 8488
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 8490
    :cond_1
    if-eqz p1, :cond_2

    .line 8491
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 8492
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .line 8493
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8499
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    if-nez v0, :cond_3

    .line 8500
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8504
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_4

    .line 8505
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 8508
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8719
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8721
    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 8722
    const/4 v0, 0x1

    .line 8730
    :goto_0
    return v0

    .line 8724
    :catch_0
    move-exception v0

    .line 8730
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9262
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9264
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9265
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9267
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 9268
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9269
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9270
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9272
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v8, 0x1

    .line 9277
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9279
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    .line 9280
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9282
    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9283
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9286
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_2

    .line 9287
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 9290
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    .line 9291
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 9293
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 9294
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 9295
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 9299
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9300
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9301
    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9302
    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 9307
    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9310
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9311
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9312
    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9314
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 9315
    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9317
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9318
    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9320
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 9321
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v5, 0x10000000

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040463

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 9325
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9326
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9331
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .line 9332
    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    .line 9333
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .line 9334
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_a

    .line 9335
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 9332
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9339
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_c

    .line 9340
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 9342
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6117
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 6118
    .local v0, "which":I
    if-nez v0, :cond_0

    .line 6119
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 6122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 6127
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6129
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 6130
    .local v2, "which":I
    if-nez v2, :cond_0

    .line 6132
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6165
    :goto_0
    return v3

    .line 6134
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 6136
    goto :goto_0

    .line 6139
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 6146
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6147
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    .line 6149
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6150
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 6151
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6152
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 6154
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    .line 6165
    goto :goto_0

    .line 6156
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 6158
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6159
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 6160
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6161
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6081
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6082
    const/4 v0, 0x1

    .line 6084
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8955
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8957
    sparse-switch p1, :sswitch_data_0

    .line 8998
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 8959
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8960
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8964
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8965
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8969
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8970
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8974
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8975
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8979
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8980
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8984
    :cond_1
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8986
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 8993
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8994
    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8988
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8989
    const v0, 0x1020033

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1

    .line 8957
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
    .end sparse-switch

    .line 8986
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_5
        0x36 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6369
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6370
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6467
    :goto_0
    return v2

    .line 6373
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6374
    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 6377
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 6459
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 6460
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 6461
    goto :goto_0

    .line 6379
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6389
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6390
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6392
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6393
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 6394
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6395
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6400
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 6403
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6404
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v2, :cond_4

    .line 6407
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v4, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 6408
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 6410
    goto/16 :goto_0

    .line 6414
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6426
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6427
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 6429
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 6430
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 6431
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6441
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v3

    .line 6442
    goto/16 :goto_0

    .line 6443
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 6447
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6448
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6449
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6454
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 6463
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_a

    .line 6464
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 6465
    goto/16 :goto_0

    .line 6467
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 6377
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 7408
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7409
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    .line 7410
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 7411
    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 7412
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 7414
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 9104
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9105
    return-void
.end method

.method public onLongClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "span"    # Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .prologue
    .line 10825
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 7067
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 7068
    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 7069
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 7070
    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 7075
    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7076
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7078
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    .line 7079
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7082
    :cond_0
    const/4 v9, -0x1

    .line 7083
    .local v9, "des":I
    const/4 v12, 0x0

    .line 7085
    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-ne v0, v2, :cond_8

    .line 7087
    move/from16 v22, v25

    .line 7174
    .local v22, "width":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 7175
    .local v3, "want":I
    move/from16 v21, v3

    .line 7177
    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    .line 7179
    :cond_2
    move v4, v3

    .line 7180
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    move/from16 v17, v4

    .line 7182
    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_19

    .line 7183
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7210
    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v14, v2, :cond_22

    .line 7212
    move v13, v15

    .line 7213
    .local v13, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7225
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v20, v2, v7

    .line 7226
    .local v20, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    .line 7227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 7234
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_23

    .line 7237
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7244
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v7, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v2, v7, :cond_7

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    add-int v2, v2, v22

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v7, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    add-int/2addr v2, v7

    move/from16 v0, v25

    if-ge v2, v0, :cond_7

    .line 7246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    add-int v2, v2, v22

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v7, v7, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    add-int v22, v2, v7

    .line 7249
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 7250
    return-void

    .line 7089
    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "unpaddedHeight":I
    .end local v21    # "unpaddedWidth":I
    .end local v22    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_9

    .line 7090
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 7093
    :cond_9
    if-gez v9, :cond_13

    .line 7096
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v7, v8, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;I)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 7098
    if-eqz v5, :cond_a

    .line 7099
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7105
    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_14

    .line 7106
    :cond_b
    if-gez v9, :cond_c

    .line 7109
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v8, v8, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    invoke-static {v2, v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v9, v0

    .line 7112
    :cond_c
    move/from16 v22, v9

    .line 7117
    .restart local v22    # "width":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7118
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_d

    .line 7119
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 7120
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 7123
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    .line 7124
    const/16 v16, -0x1

    .line 7127
    .local v16, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_e

    .line 7128
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    .line 7131
    :cond_e
    if-gez v16, :cond_f

    .line 7132
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 7133
    if-eqz v6, :cond_f

    .line 7134
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7138
    :cond_f
    if-eqz v6, :cond_10

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_15

    .line 7139
    :cond_10
    if-gez v16, :cond_11

    .line 7140
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v16, v0

    .line 7142
    :cond_11
    move/from16 v17, v16

    .line 7147
    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 7148
    move/from16 v22, v17

    .line 7152
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v22, v22, v2

    .line 7154
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    .line 7155
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 7160
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    .line 7161
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 7167
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 7169
    const/high16 v2, -0x80000000

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 7170
    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_0

    .line 7102
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 7114
    :cond_14
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v22, v0

    .restart local v22    # "width":I
    goto/16 :goto_6

    .line 7144
    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_15
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17    # "hintWidth":I
    goto :goto_7

    .line 7157
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_8

    .line 7163
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_9

    .line 7180
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v21    # "unpaddedWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    .line 7186
    .restart local v17    # "hintWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    .line 7191
    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1b
    const/16 v23, 0x1

    .line 7196
    .local v23, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_20

    :cond_1c
    const/16 v19, 0x1

    .line 7198
    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1d

    if-eqz v19, :cond_3

    .line 7199
    :cond_1d
    if-nez v19, :cond_21

    if-eqz v23, :cond_21

    .line 7200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 7186
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_a

    .line 7191
    .restart local v18    # "layoutChanged":Z
    :cond_1f
    const/16 v23, 0x0

    goto :goto_b

    .line 7196
    .restart local v23    # "widthChanged":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_c

    .line 7202
    .restart local v19    # "maximumChanged":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 7215
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 7217
    .local v10, "desired":I
    move v13, v10

    .line 7218
    .restart local v13    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7220
    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_4

    .line 7221
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    .line 7239
    .end local v10    # "desired":I
    .restart local v20    # "unpaddedHeight":I
    :cond_23
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9123
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9125
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9126
    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9127
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9128
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9132
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 5355
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5356
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5359
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_6

    .line 5364
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5366
    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5368
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5373
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSectionTopDragged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5375
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5383
    :cond_2
    if-gez v0, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_3

    .line 5384
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5387
    :cond_3
    if-ltz v0, :cond_4

    .line 5388
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 5397
    .end local v0    # "curs":I
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_5

    .line 5398
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5399
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    .line 5403
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 5406
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    .line 5408
    const/4 v1, 0x1

    return v1

    .line 5391
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0

    .line 5401
    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 6681
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 9151
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 9152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v29

    if-eqz v29, :cond_8

    :cond_0
    const/4 v12, 0x1

    .line 9154
    .local v12, "isPassword":Z
    :goto_0
    if-nez v12, :cond_7

    .line 9155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 9156
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 9158
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9159
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    .line 9160
    .local v15, "lineCount":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-gt v15, v0, :cond_9

    .line 9162
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 9230
    :goto_1
    const/16 v21, 0x0

    .line 9231
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v26

    .line 9232
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    if-eqz v29, :cond_2

    .line 9233
    or-int/lit8 v21, v21, 0x1

    .line 9235
    :cond_2
    and-int/lit8 v29, v26, 0x2

    if-eqz v29, :cond_3

    .line 9236
    or-int/lit8 v21, v21, 0x2

    .line 9240
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    move-result v17

    .line 9241
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    if-eqz v29, :cond_4

    .line 9242
    or-int/lit8 v21, v21, 0x1

    .line 9244
    :cond_4
    and-int/lit8 v29, v17, 0x8

    if-eqz v29, :cond_5

    .line 9245
    or-int/lit8 v21, v21, 0x4

    .line 9247
    :cond_5
    and-int/lit8 v29, v17, 0x10

    if-eqz v29, :cond_6

    .line 9248
    or-int/lit8 v21, v21, 0x8

    .line 9253
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 9256
    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 9257
    return-void

    .line 9152
    .end local v12    # "isPassword":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 9166
    .restart local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_9
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 9167
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9168
    const/16 v29, 0x1

    aget v25, v23, v29

    .line 9169
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    .line 9170
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    .line 9171
    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_2
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/view/View;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    move-object/from16 v18, v27

    .line 9172
    check-cast v18, Landroid/view/View;

    .line 9173
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    goto :goto_2

    .line 9175
    :cond_a
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v28

    .line 9178
    .local v28, "windowHeight":I
    if-ltz v25, :cond_11

    .line 9180
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 9181
    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .line 9190
    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    sub-int v10, v24, v29

    .line 9191
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_b

    .line 9192
    const/4 v10, 0x0

    .line 9194
    :cond_b
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    add-int v8, v6, v29

    .line 9195
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_c

    .line 9196
    add-int/lit8 v8, v15, -0x1

    .line 9199
    :cond_c
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 9200
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 9203
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    .line 9204
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    .line 9205
    .local v19, "selEnd":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 9206
    move/from16 v0, v20

    if-ge v0, v9, :cond_d

    .line 9207
    move/from16 v9, v20

    .line 9209
    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    .line 9210
    move/from16 v7, v19

    .line 9214
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    .line 9215
    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_10

    .line 9216
    :cond_f
    move-object/from16 v0, v22

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 9218
    :cond_10
    sub-int v29, v20, v9

    sub-int v30, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 9219
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 9220
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [I

    .line 9221
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v5

    .line 9222
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_12

    .line 9223
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v30

    aput v30, v16, v29

    .line 9224
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v30

    add-int v30, v30, v5

    aput v30, v14, v29

    .line 9222
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 9185
    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_11
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 9186
    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    sub-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .restart local v6    # "bottomLine":I
    goto/16 :goto_3

    .line 9226
    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto/16 :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 10017
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_1

    .line 10026
    :cond_0
    :goto_0
    return-void

    .line 10020
    :cond_1
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10023
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    .line 10024
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4177
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    .line 4178
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4231
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 4182
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 4183
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4186
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 4187
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4190
    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    .line 4191
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    .line 4192
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4194
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_7

    .line 4195
    :cond_3
    const-string v2, ""

    .line 4197
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 4198
    const-string v2, "(restored) "

    .line 4201
    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 4216
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4218
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 4227
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v4, :cond_0

    .line 4228
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4229
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    goto/16 :goto_0

    .line 4205
    .restart local v1    # "len":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4207
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    .line 4208
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4209
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 9970
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 9972
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 9973
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_0

    .line 9974
    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 9975
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 9976
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 9979
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 4113
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 4116
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4117
    .local v1, "save":Z
    const/4 v4, 0x0

    .line 4118
    .local v4, "start":I
    const/4 v0, 0x0

    .line 4120
    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 4121
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4122
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4123
    if-gez v4, :cond_0

    if-ltz v0, :cond_1

    .line 4125
    :cond_0
    const/4 v1, 0x1

    .line 4129
    :cond_1
    if-eqz v1, :cond_6

    .line 4130
    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4132
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    .line 4133
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4135
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    .line 4136
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4138
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    .line 4139
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 4140
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4143
    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 4148
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    .line 4149
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 4152
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4154
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    .line 4155
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 4160
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_4
    :goto_1
    return-object v3

    .line 4145
    .restart local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6
    move-object v3, v5

    .line 4160
    goto :goto_1
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 5442
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 5443
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 5444
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 9624
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 9625
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9626
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 9628
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 8177
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 8178
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8461
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 8464
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8468
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 8469
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 8167
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 9518
    const/4 v1, 0x0

    .line 9519
    .local v1, "min":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9522
    .local v0, "max":I
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    if-lez v6, :cond_1

    .line 9523
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/letv/leui/util/LeTextUtils;->removeLeTypefaceSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9526
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9527
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9528
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9530
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9531
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9534
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v5, v4

    .line 9589
    :cond_3
    :goto_0
    return v5

    .line 9539
    :sswitch_0
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_4

    move v4, v5

    .line 9541
    .local v4, "shouldRestartActionMode":Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9542
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 9543
    if-eqz v4, :cond_3

    .line 9544
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 9549
    .end local v4    # "shouldRestartActionMode":Z
    :sswitch_1
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3

    .line 9550
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->undo()V

    goto :goto_0

    .line 9555
    :sswitch_2
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3

    .line 9556
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->redo()V

    goto :goto_0

    .line 9561
    :sswitch_3
    invoke-direct {p0, v1, v0, v5}, Landroid/widget/TextView;->paste(IIZ)V

    goto :goto_0

    .line 9565
    :sswitch_4
    invoke-direct {p0, v1, v0, v4}, Landroid/widget/TextView;->paste(IIZ)V

    goto :goto_0

    .line 9569
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9570
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9571
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .line 9575
    :sswitch_6
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9576
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .line 9580
    :sswitch_7
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3

    .line 9581
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->replace()V

    goto :goto_0

    .line 9586
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    goto :goto_0

    .line 9534
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_4
        0x1020032 -> :sswitch_1
        0x1020033 -> :sswitch_2
        0x1020034 -> :sswitch_7
        0x1020035 -> :sswitch_8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8560
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-nez v10, :cond_0

    .line 8561
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLastDownPositionX:F

    .line 8562
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLastDownPositionY:F

    .line 8563
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    .line 8567
    :cond_0
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_1

    if-nez v0, :cond_1

    .line 8569
    iget-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    sub-long/2addr v10, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4

    .line 8571
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor;->mDoubleTap:Z

    .line 8572
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    .line 8579
    :cond_1
    :goto_0
    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    .line 8580
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 8583
    :cond_2
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_5

    .line 8584
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8586
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v10}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 8588
    const/4 v7, 0x1

    .line 8714
    :cond_3
    :goto_1
    return v7

    .line 8574
    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDoubleTap:Z

    .line 8575
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    goto :goto_0

    .line 8592
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 8599
    .local v7, "superResult":Z
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    .line 8600
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 8602
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    .line 8604
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v10, :cond_3

    .line 8605
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 8606
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    goto :goto_1

    .line 8618
    :cond_6
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v10, :cond_7

    iget-boolean v10, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 8619
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    goto :goto_1

    .line 8624
    :cond_7
    const/4 v10, 0x1

    if-ne v0, v10, :cond_11

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v10, :cond_11

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v9, 0x1

    .line 8627
    .local v9, "touchIsFinished":Z
    :goto_2
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v10, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spannable;

    if-eqz v10, :cond_13

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_13

    .line 8629
    const/4 v1, 0x0

    .line 8631
    .local v1, "handled":Z
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v10, :cond_b

    .line 8634
    const/4 v3, 0x0

    .line 8635
    .local v3, "isIgnoreMovementDetected":Z
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_a

    .line 8636
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 8637
    .local v6, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 8638
    .local v5, "selectionEnd":I
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v10, :cond_a

    if-ne v6, v5, :cond_a

    if-nez v5, :cond_a

    .line 8640
    const/4 v3, 0x1

    .line 8643
    .end local v5    # "selectionEnd":I
    .end local v6    # "selectionStart":I
    :cond_a
    if-nez v3, :cond_b

    .line 8644
    iget-object v11, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-interface {v11, p0, v10, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v10

    or-int/2addr v1, v10

    .line 8650
    .end local v3    # "isIgnoreMovementDetected":Z
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    .line 8651
    .local v8, "textIsSelectable":Z
    if-eqz v9, :cond_c

    iget-boolean v10, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v10, :cond_c

    iget v10, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v10, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->isInSelectionMode()Z

    move-result v10

    if-nez v10, :cond_c

    .line 8659
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    const-class v13, Landroid/text/style/ClickableSpan;

    invoke-interface {v10, v11, v12, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 8662
    .local v4, "links":[Landroid/text/style/ClickableSpan;
    array-length v10, v4

    if-lez v10, :cond_c

    .line 8663
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 8664
    const/4 v1, 0x1

    .line 8668
    .end local v4    # "links":[Landroid/text/style/ClickableSpan;
    :cond_c
    if-eqz v9, :cond_10

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v10

    if-nez v10, :cond_d

    if-eqz v8, :cond_10

    .line 8670
    :cond_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 8671
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 8672
    if-nez v8, :cond_f

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v10, :cond_f

    .line 8675
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v10

    if-nez v10, :cond_e

    .line 8676
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor;->mIgnoreNextInsertActionModeStart:Z

    .line 8679
    :cond_e
    if-eqz v2, :cond_12

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_3
    or-int/2addr v1, v10

    .line 8683
    :cond_f
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 8685
    const/4 v1, 0x1

    .line 8688
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    if-eqz v1, :cond_13

    .line 8689
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 8624
    .end local v1    # "handled":Z
    .end local v8    # "textIsSelectable":Z
    .end local v9    # "touchIsFinished":Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 8679
    .restart local v1    # "handled":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v8    # "textIsSelectable":Z
    .restart local v9    # "touchIsFinished":Z
    :cond_12
    const/4 v10, 0x0

    goto :goto_3

    .line 8694
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "textIsSelectable":Z
    :cond_13
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v10, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUseLeMarquee:Z

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v10, v11, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8696
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v10, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    if-nez v10, :cond_14

    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v11, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v11, p0}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->initMarquee(Landroid/widget/TextView;)Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    move-result-object v11

    iput-object v11, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    .line 8697
    :cond_14
    const/4 v3, 0x0

    .line 8698
    .restart local v3    # "isIgnoreMovementDetected":Z
    const/4 v10, 0x2

    if-ne v0, v10, :cond_15

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_15

    .line 8699
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 8700
    .restart local v6    # "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 8701
    .restart local v5    # "selectionEnd":I
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v10, :cond_15

    if-ne v6, v5, :cond_15

    if-nez v5, :cond_15

    .line 8703
    const/4 v3, 0x1

    .line 8706
    .end local v5    # "selectionEnd":I
    .end local v6    # "selectionStart":I
    :cond_15
    if-nez v3, :cond_3

    .line 8707
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v10, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mMarquee:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v10, p0, p1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->onTouchEvent(Landroid/widget/TextView;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 8708
    .restart local v1    # "handled":Z
    if-eqz v1, :cond_3

    .line 8709
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8759
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8760
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8761
    const/4 v0, 0x1

    .line 8765
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8522
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8523
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 8524
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 8525
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 8527
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 8513
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8515
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 8517
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8518
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 9352
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v7, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9444
    :cond_0
    :goto_0
    return v1

    .line 9356
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 9444
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 9358
    :sswitch_0
    const/4 v1, 0x0

    .line 9361
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9362
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 9363
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 9366
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    .line 9367
    const/4 v1, 0x1

    .line 9371
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9375
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 9376
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 9377
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 9378
    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_0

    .line 9385
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 9386
    const v5, 0x1020021

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    move v1, v6

    .line 9390
    goto/16 :goto_0

    .line 9392
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9393
    const v5, 0x1020022

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v1, v6

    .line 9397
    goto/16 :goto_0

    .line 9399
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9400
    const v5, 0x1020020

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_9
    move v1, v6

    .line 9404
    goto/16 :goto_0

    .line 9406
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 9407
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 9408
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_a

    move v1, v6

    .line 9409
    goto/16 :goto_0

    .line 9411
    :cond_a
    if-eqz p2, :cond_c

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 9413
    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_d

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 9415
    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_f

    .line 9417
    :cond_b
    if-ne v3, v0, :cond_e

    if-ne v0, v5, :cond_e

    .line 9418
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_c
    move v3, v5

    .line 9411
    goto :goto_1

    .restart local v3    # "start":I
    :cond_d
    move v0, v5

    .line 9413
    goto :goto_2

    .line 9421
    .restart local v0    # "end":I
    :cond_e
    if-ltz v3, :cond_f

    if-gt v3, v0, :cond_f

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_f

    .line 9422
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9424
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    .line 9425
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_f
    move v1, v6

    .line 9430
    goto/16 :goto_0

    .line 9433
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 9434
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0

    .line 9437
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 9438
    const v5, 0x1020035

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_10
    move v1, v6

    .line 9442
    goto/16 :goto_0

    .line 9356
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 9598
    const/4 v0, 0x0

    .line 9600
    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9602
    iput-boolean v2, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    .line 9604
    const/4 v0, 0x1

    .line 9607
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 9608
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 9611
    :cond_1
    if-eqz v0, :cond_3

    .line 9612
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 9613
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9615
    :cond_2
    iput-boolean v2, p0, Landroid/widget/TextView;->mLeTextViewDiscardNextActionUp:Z

    .line 9619
    :cond_3
    return v0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 8242
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 8256
    :cond_0
    return-void

    .line 8243
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8245
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 8246
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .line 8247
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8248
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8249
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8250
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 8251
    :cond_2
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8252
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8247
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 4164
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4166
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4167
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4168
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 4170
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4173
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4627
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 4629
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 4630
    check-cast v1, Landroid/text/Spannable;

    .line 4636
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4637
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4638
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4632
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4633
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 4641
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8203
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 8204
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8206
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 8207
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8210
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 9830
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9831
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 10058
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10059
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    .line 6355
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 6356
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 10032
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 10033
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10034
    return-void
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9821
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 9822
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 9824
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9825
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9826
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 9452
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9453
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 9459
    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 9463
    :goto_0
    return-void

    .line 9462
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 9482
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9484
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9485
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 9486
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 9487
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9488
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9489
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 8279
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8280
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8281
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8283
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8286
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 8287
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8263
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8264
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8265
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8266
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8267
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8271
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    .line 8272
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10175
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 10192
    :goto_0
    return-void

    .line 10182
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 10183
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 10184
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10186
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10187
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 10188
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 10190
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    .line 7901
    if-eqz p1, :cond_0

    .line 7902
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7906
    :goto_0
    return-void

    .line 7904
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3433
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 3434
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    .prologue
    .line 3166
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 3167
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3168
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3169
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3170
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3172
    :cond_0
    return-void
.end method

.method public setCJKFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 10726
    return-void
.end method

.method public setCJKTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 10733
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2629
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2630
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 2631
    if-eqz v0, :cond_0

    .line 2632
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2641
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2642
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2643
    return-void

    .line 2635
    :cond_1
    if-nez v0, :cond_2

    .line 2636
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2638
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2672
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2673
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2675
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2676
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2678
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2679
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2702
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2703
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2705
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2706
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2708
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2709
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2198
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2201
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2202
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2203
    :cond_0
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2204
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2205
    :cond_1
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2206
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2207
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2210
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_6

    :cond_3
    move v2, v6

    .line 2211
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    .line 2213
    if-eqz v1, :cond_4

    .line 2214
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_7

    .line 2215
    iput-object v8, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2305
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 2306
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2307
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2310
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2311
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2312
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2313
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2314
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2315
    return-void

    .end local v2    # "drawables":Z
    :cond_6
    move v2, v5

    .line 2210
    goto :goto_0

    .line 2219
    .restart local v2    # "drawables":Z
    :cond_7
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 2220
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_8

    .line 2221
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2223
    :cond_8
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v3

    .line 2219
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 2225
    :cond_9
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2226
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2227
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2228
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2232
    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    .line 2233
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2236
    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v7, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2238
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eq v7, p1, :cond_c

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eqz v7, :cond_c

    .line 2239
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2241
    :cond_c
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v7, v5

    .line 2243
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eq v7, p2, :cond_d

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eqz v7, :cond_d

    .line 2244
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2246
    :cond_d
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v7, v6

    .line 2248
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eq v6, p3, :cond_e

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_e

    .line 2249
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2251
    :cond_e
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v6, v9

    .line 2253
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eq v6, p4, :cond_f

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eqz v6, :cond_f

    .line 2254
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2256
    :cond_f
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v6, v10

    .line 2258
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2261
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 2263
    .local v4, "state":[I
    if-eqz p1, :cond_10

    .line 2264
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2265
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2266
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2267
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2268
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 2273
    :goto_3
    if-eqz p3, :cond_11

    .line 2274
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2275
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2276
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2277
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2278
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 2283
    :goto_4
    if-eqz p2, :cond_12

    .line 2284
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2285
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2286
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2287
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2288
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2293
    :goto_5
    if-eqz p4, :cond_13

    .line 2294
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2295
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2296
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2297
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2298
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2270
    :cond_10
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_3

    .line 2280
    :cond_11
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_4

    .line 2290
    :cond_12
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_5

    .line 2300
    :cond_13
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2395
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2398
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2399
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    .line 2400
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2402
    :cond_0
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v4

    .line 2403
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_1

    .line 2404
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2406
    :cond_1
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v9

    .line 2407
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2408
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2411
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    move v2, v5

    .line 2414
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_b

    .line 2416
    if-eqz v1, :cond_4

    .line 2417
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_6

    .line 2418
    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2515
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2516
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2517
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2518
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2519
    return-void

    .end local v2    # "drawables":Z
    :cond_5
    move v2, v4

    .line 2411
    goto :goto_0

    .line 2422
    .restart local v2    # "drawables":Z
    :cond_6
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2423
    :cond_7
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2424
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_8

    .line 2425
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2427
    :cond_8
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v5

    .line 2428
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 2429
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2431
    :cond_9
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2432
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_a

    .line 2433
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2435
    :cond_a
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v8

    .line 2436
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2437
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2438
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2439
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2443
    :cond_b
    if-nez v1, :cond_c

    .line 2444
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2447
    :cond_c
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2449
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v6, p1, :cond_d

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_d

    .line 2450
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2452
    :cond_d
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2454
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eq v6, p2, :cond_e

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_e

    .line 2455
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2457
    :cond_e
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v6, v5

    .line 2459
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    .line 2460
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2462
    :cond_f
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2464
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eq v5, p4, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_10

    .line 2465
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2467
    :cond_10
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v5, v8

    .line 2469
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2472
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2474
    .local v3, "state":[I
    if-eqz p1, :cond_11

    .line 2475
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2476
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2477
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2478
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2479
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2484
    :goto_2
    if-eqz p3, :cond_12

    .line 2485
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2486
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2487
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2488
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2489
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2494
    :goto_3
    if-eqz p2, :cond_13

    .line 2495
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2496
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2497
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2498
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2499
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2504
    :goto_4
    if-eqz p4, :cond_14

    .line 2505
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2506
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2507
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2508
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2509
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2481
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 2491
    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 2501
    :cond_13
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2511
    :cond_14
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2542
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2543
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2548
    return-void

    :cond_1
    move-object v4, v1

    .line 2543
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2567
    if-eqz p1, :cond_0

    .line 2568
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2570
    :cond_0
    if-eqz p3, :cond_1

    .line 2571
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2573
    :cond_1
    if-eqz p2, :cond_2

    .line 2574
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2576
    :cond_2
    if-eqz p4, :cond_3

    .line 2577
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2579
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2580
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2338
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2339
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2343
    return-void

    :cond_1
    move-object v4, v1

    .line 2339
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2363
    if-eqz p1, :cond_0

    .line 2364
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2366
    :cond_0
    if-eqz p3, :cond_1

    .line 2367
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2369
    :cond_1
    if-eqz p2, :cond_2

    .line 2370
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2372
    :cond_2
    if-eqz p4, :cond_3

    .line 2373
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2375
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2376
    return-void
.end method

.method public setCurcorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 10740
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->setCurcorColor(I)V

    .line 10741
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10084
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10085
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8050
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 8061
    :cond_0
    :goto_0
    return-void

    .line 8051
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8052
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 8053
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 8054
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8056
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 8059
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 9731
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9732
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 9733
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 9694
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9695
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 9696
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 4269
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 4270
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4271
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    .prologue
    .line 3109
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 3110
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 7977
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 7978
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7980
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7981
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7982
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7983
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7986
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3950
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3951
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3953
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3954
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3955
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1634
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    if-nez p1, :cond_2

    .line 1640
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1641
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1642
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1646
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1648
    if-eqz p1, :cond_3

    .line 1650
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1651
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1655
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 1657
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1660
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5064
    if-nez p1, :cond_0

    .line 5065
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5073
    :goto_0
    return-void

    .line 5067
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080483

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5070
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5071
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5085
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5086
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5087
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5089
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 6555
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 6556
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 6557
    if-nez v4, :cond_3

    .line 6558
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6588
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 6589
    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 6590
    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6591
    .local v1, "start":I
    if-gez v1, :cond_7

    const/4 v1, 0x0

    .line 6593
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6594
    .local v2, "end":I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 6596
    :cond_2
    :goto_2
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6599
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 6600
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6604
    :goto_3
    return-void

    .line 6560
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v1, 0x0

    .line 6561
    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 6563
    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v0, :cond_5

    .line 6564
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 6565
    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6566
    if-le v1, v6, :cond_4

    move v1, v6

    .line 6567
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6568
    if-le v2, v6, :cond_5

    move v2, v6

    .line 6571
    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v1, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6572
    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6573
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 6575
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_0

    .line 6579
    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 6592
    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v1, v6, :cond_1

    move v1, v6

    goto :goto_1

    .line 6595
    .restart local v2    # "end":I
    :cond_8
    if-le v2, v6, :cond_2

    move v2, v6

    goto :goto_2

    .line 6602
    :cond_9
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    .line 6610
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 6611
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6616
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 6617
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 6618
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 5116
    if-nez p1, :cond_0

    .line 5117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5120
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 5122
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 5123
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5125
    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3225
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3226
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 3228
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3229
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3230
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3231
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3234
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5093
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 5095
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    .line 5097
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5099
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4248
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4249
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    .line 3582
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 3583
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 3585
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 3586
    or-int/lit8 p1, p1, 0x30

    .line 3589
    :cond_1
    const/4 v7, 0x0

    .line 3591
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 3593
    const/4 v7, 0x1

    .line 3596
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 3597
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3600
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 3602
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 3604
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 3605
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 3607
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 3611
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .line 3605
    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3823
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3824
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3826
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3827
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3828
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3300
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 3301
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 3303
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->setHighlightColor(I)V

    .line 3305
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3307
    :cond_0
    return-void
.end method

.method setHighlightPathBogusExt(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 10641
    iput-boolean p1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 10642
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4600
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4601
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4576
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 4578
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4579
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4582
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4583
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4587
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 4588
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4590
    :cond_2
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3488
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3489
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3490
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3503
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3504
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3505
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    .line 3656
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 3657
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 3659
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3660
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3661
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3662
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3665
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 3193
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 3194
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3195
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3196
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3197
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3199
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 4842
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4843
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4844
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 4845
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 4846
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 4815
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4816
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4817
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 4818
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    .line 7040
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 7041
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 7043
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7044
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7045
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7046
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7049
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5014
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5015
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5016
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5017
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5018
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 5019
    return-void
.end method

.method public setInputType(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4660
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 4661
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 4662
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 4663
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 4664
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 4665
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .line 4666
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_6

    .line 4667
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4668
    invoke-direct {p0, v11, v12, v8}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 4682
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .line 4686
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    .line 4689
    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 4692
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 4693
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4696
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4697
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4698
    :cond_5
    return-void

    .line 4669
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_6
    if-eqz v3, :cond_8

    .line 4670
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 4671
    const/4 v0, 0x1

    .line 4673
    :cond_7
    invoke-direct {p0, v11, v12, v8}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    goto :goto_0

    .line 4674
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    .line 4676
    :cond_9
    invoke-direct {p0, v11, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 4677
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 4678
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    .line 4682
    goto :goto_1
.end method

.method public setIsLineCenterVertical(Z)V
    .locals 1
    .param p1, "isCenter"    # Z

    .prologue
    .line 10747
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iput-boolean p1, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    .line 10748
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 1845
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1846
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1848
    if-eqz p1, :cond_2

    .line 1849
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1851
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1862
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1863
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1864
    :cond_1
    return-void

    .line 1852
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 1859
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLeCJKTextWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 10695
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLeTextWeight(I)V

    .line 10696
    return-void
.end method

.method public setLeTextWeight(I)V
    .locals 3
    .param p1, "weight"    # I

    .prologue
    const/4 v2, -0x1

    .line 10668
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    if-eq p1, v1, :cond_0

    .line 10669
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iput p1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    .line 10670
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v1, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getLeFontWeight(I)Ljava/lang/String;

    move-result-object v0

    .line 10671
    .local v0, "fontFamily":Ljava/lang/String;
    invoke-direct {p0, v0, v2, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 10673
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3134
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 3137
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3138
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3139
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3140
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3143
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 3986
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 3987
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 3988
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 3990
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 3991
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3992
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3993
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3996
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3804
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3805
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3807
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3808
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3809
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3541
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3542
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3543
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3556
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3557
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3558
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3446
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 3447
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    .line 7997
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 7998
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3891
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3892
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3894
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3895
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3896
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3775
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3776
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3778
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3779
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3780
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3746
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3747
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3749
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3750
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3751
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3918
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3919
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3921
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3922
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3923
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3837
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 3838
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3840
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3841
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3842
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3718
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 3719
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3721
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3722
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3723
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3690
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 3691
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3693
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3694
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3695
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3864
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 3865
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3867
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3868
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3869
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 1900
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 1901
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1903
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 1904
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1907
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1911
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1913
    :cond_1
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 4879
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4880
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4881
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 4882
    return-void
.end method

.method public setOnURLClickEventListener(Landroid/widget/TextView$OnURLClickEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TextView$OnURLClickEventListener;

    .prologue
    .line 10636
    iput-object p1, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    .line 10637
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2769
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2773
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2777
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2778
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2779
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2783
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2787
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2791
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2792
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2793
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3638
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3639
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 3641
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3642
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3643
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3644
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3647
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4986
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4987
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4988
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 4989
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 4745
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 4748
    :goto_0
    return-void

    .line 4746
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4747
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    .line 8769
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 8770
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8032
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8033
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 8035
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 8036
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8038
    :cond_0
    return-void
.end method

.method public setSelectHandleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 10719
    return-void
.end method

.method public setSelectHandleColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 10712
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 8542
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 8544
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8546
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 8547
    if-eqz p1, :cond_1

    .line 8548
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8553
    :cond_0
    :goto_0
    return-void

    .line 8550
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 3357
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 3359
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 3360
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 3361
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 3362
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    .line 3365
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3367
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3327
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3328
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 3329
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 7885
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 7886
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 7922
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 7923
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 7924
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 2
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 10068
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 10069
    .local v0, "textLength":I
    if-le p3, v0, :cond_0

    .line 10070
    move p3, v0

    .line 10072
    :cond_0
    if-gt p2, p3, :cond_1

    .line 10073
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 10077
    :cond_1
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 4277
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 4278
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4279
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4560
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4561
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4564
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4565
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4294
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4295
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4319
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4321
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 4322
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 4324
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 4509
    const/4 v0, 0x0

    .line 4511
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 4512
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4520
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 4521
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4522
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4527
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 4528
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 4533
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4534
    return-void

    .line 4524
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 4530
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2819
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2820
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2830
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2832
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 2834
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    .line 2835
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2838
    :cond_0
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 2839
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    .line 2840
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2843
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 2844
    .local v13, "textSize":I
    if-eqz v13, :cond_2

    .line 2845
    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2848
    :cond_2
    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 2850
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    .line 2851
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 2854
    :cond_3
    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 2856
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    .line 2857
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2860
    :cond_4
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2861
    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 2862
    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2863
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 2865
    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2866
    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    .line 2867
    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2868
    .local v2, "dx":F
    const/16 v15, 0x9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 2869
    .local v3, "dy":F
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2870
    .local v5, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2873
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2874
    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2877
    :cond_6
    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2878
    const/16 v15, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 2882
    :cond_7
    const/16 v15, 0xe

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2883
    const/16 v15, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 2887
    :cond_8
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2888
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 2892
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2893
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3248
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3249
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3250
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3263
    if-nez p1, :cond_0

    .line 3264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3267
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3268
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3269
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    .line 5613
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 5631
    :cond_0
    :goto_0
    return-void

    .line 5615
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5616
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_0

    .line 5618
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 5619
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 5620
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5621
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5622
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 5626
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 5627
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5630
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    .line 5626
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 5627
    :cond_3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4307
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4308
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    .line 4543
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4544
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4545
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4547
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4549
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 4550
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 4551
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4556
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2913
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 2914
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 2915
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3040
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3042
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3044
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3045
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3046
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3047
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3050
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2984
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2985
    return-void
.end method

.method public setTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 2997
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3000
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3001
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3008
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    iget v3, p0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    invoke-static {p1, p2, v1, v2, v3}, Lcom/letv/leui/util/LeTypedValue;->applyDimension(IFLandroid/content/res/Resources;ZI)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 3011
    return-void

    .line 3003
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    .line 1947
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1952
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2

    .line 1953
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 1954
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1958
    :cond_2
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1960
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 1961
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 1962
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 1963
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 1968
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1970
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1971
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_3
    move v1, v2

    .line 1962
    goto :goto_1

    .line 1965
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 3067
    if-nez p1, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 3068
    sget-object p1, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    .line 3070
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_1

    .line 3071
    iput-object p1, p0, Landroid/widget/TextView;->mUserSetTypeface:Landroid/graphics/Typeface;

    .line 3074
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 3075
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3077
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_2

    .line 3078
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3079
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3080
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3083
    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1675
    if-nez p1, :cond_0

    sget-object v4, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    if-eqz v4, :cond_0

    .line 1676
    sget-object p1, Landroid/graphics/Typeface;->EUI_TYPEFACE:Landroid/graphics/Typeface;

    .line 1679
    :cond_0
    if-lez p2, :cond_5

    .line 1680
    if-nez p1, :cond_2

    .line 1681
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1685
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1687
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1688
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1689
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1690
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1696
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 1683
    :cond_2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1687
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_4
    move v2, v3

    .line 1690
    goto :goto_2

    .line 1692
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1693
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1694
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1804
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3971
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3972
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3974
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3975
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3976
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v7, 0x1

    .line 8341
    const/4 v4, 0x0

    .line 8342
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    .local v3, "newSelStart":I
    const/4 v2, -0x1

    .line 8344
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v5, :cond_14

    const/4 v1, 0x0

    .line 8346
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_1

    .line 8347
    const/4 v4, 0x1

    .line 8348
    move v2, p4

    .line 8350
    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    .line 8351
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8352
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8353
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8354
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    .line 8358
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_3

    .line 8359
    const/4 v4, 0x1

    .line 8360
    move v3, p4

    .line 8362
    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    .line 8363
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8364
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8368
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    .line 8369
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8370
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 8372
    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_7

    .line 8373
    if-gez v3, :cond_5

    .line 8374
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 8376
    :cond_5
    if-gez v2, :cond_6

    .line 8377
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 8379
    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 8383
    :cond_7
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_b

    .line 8385
    :cond_8
    if-eqz v1, :cond_9

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    .line 8386
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8387
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8388
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8392
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    .line 8393
    if-ltz p3, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 8394
    :cond_a
    if-ltz p4, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 8398
    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 8399
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8400
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 8401
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 8404
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 8405
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_16

    .line 8406
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 8413
    :cond_e
    :goto_2
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 8416
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 8417
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_17

    .line 8418
    if-ltz p3, :cond_10

    .line 8419
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 8420
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8422
    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 8423
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8426
    :cond_10
    if-ltz p4, :cond_12

    .line 8427
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 8428
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8430
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 8431
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8443
    :cond_12
    :goto_3
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    .line 8445
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 8447
    :cond_13
    return-void

    .line 8344
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_0

    .line 8390
    .restart local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_1

    .line 8408
    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_2

    .line 8438
    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3
.end method

.method public startActivityWithUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 10771
    return-void
.end method

.method public startSelectionMode()Z
    .locals 1

    .prologue
    .line 10792
    const/4 v0, 0x0

    .line 10793
    .local v0, "handled":Z
    return v0
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    .line 9748
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9749
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 9751
    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9021
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9022
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 8290
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8291
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8293
    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 8294
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8297
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8299
    if-ltz v0, :cond_3

    .line 8300
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8301
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 8302
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8304
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5481
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    .line 5482
    .local v4, "verified":Z
    if-nez v4, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_0

    .line 5483
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 5484
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :cond_1

    .line 5485
    const/4 v4, 0x1

    .line 5489
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "verified":Z
    :cond_0
    return v4

    .line 5483
    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "verified":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 10040
    if-eqz p1, :cond_0

    .line 10041
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 10043
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 7808
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 7812
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 7813
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 7814
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7816
    :cond_0
    return v0
.end method
