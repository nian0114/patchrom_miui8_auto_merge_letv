.class public Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;,
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field isAbove:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    iput v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownGravity:I

    iput-boolean v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mListItemExpandMaximum:I

    iput v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptPosition:I

    new-instance v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0, v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    new-instance v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0, v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;

    new-instance v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mScrollListener:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;

    new-instance v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHideSelector:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mLayoutDirection:I

    return-void
.end method

.method static synthetic access$1000(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 24

    .prologue
    const/4 v15, 0x0

    .local v15, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mContext:Landroid/content/Context;

    .local v6, "context":Landroid/content/Context;
    new-instance v21, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    new-instance v22, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mModal:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v6, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$4;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mScrollListener:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupScrollListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    .local v7, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    .local v11, "hintView":Landroid/view/View;
    if-eqz v11, :cond_2

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v9, "hintContainer":Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v10, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptPosition:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    const-string v21, "ListPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid hint position "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptPosition:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    move/from16 v21, v0

    const/high16 v22, -0x80000000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .local v20, "widthSpec":I
    const/4 v8, 0x0

    .local v8, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v11, v0, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v15, v21, v22

    move-object v7, v9

    .end local v8    # "heightSpec":I
    .end local v9    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setContentView(Landroid/view/View;)V

    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v16, 0x0

    .local v16, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v16, v21, v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffsetSet:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getInputMethodMode()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/4 v12, 0x1

    .local v12, "ignoreBottomDecorations":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v14

    .local v14, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    :cond_5
    add-int v21, v14, v16

    :goto_5
    return v21

    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "ignoreBottomDecorations":Z
    .end local v14    # "maxHeight":I
    .end local v16    # "padding":I
    .restart local v6    # "context":Landroid/content/Context;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .restart local v7    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v9    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v9, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "dropDownView":Landroid/view/ViewGroup;
    .end local v9    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .restart local v7    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v15, v21, v22

    goto/16 :goto_2

    .end local v10    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    .restart local v3    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_3

    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .restart local v12    # "ignoreBottomDecorations":Z
    .restart local v14    # "maxHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "childWidthSpec":I
    :goto_6
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v5, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v5, v21

    const/16 v21, 0x2

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v5, v21

    const/16 v21, 0x3

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v5, v21

    const/16 v21, 0x4

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v5, v21

    .local v5, "clazzs":[Ljava/lang/Class;
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x2

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x3

    sub-int v22, v14, v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x4

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v17, v21

    .local v17, "pramas":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->preBuildListView(Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-object/from16 v21, v0

    const-string v22, "measureHeightOfChildren"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v5, v2}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "res":Ljava/lang/Object;
    check-cast v18, Ljava/lang/Integer;

    .end local v18    # "res":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, "listContent":I
    if-lez v13, :cond_b

    add-int v15, v15, v16

    :cond_b
    add-int v21, v13, v15

    goto/16 :goto_5

    .end local v4    # "childWidthSpec":I
    .end local v5    # "clazzs":[Ljava/lang/Class;
    .end local v13    # "listContent":I
    .end local v17    # "pramas":[Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    const/high16 v22, -0x80000000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto/16 :goto_6

    .end local v4    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    .local v0, "list":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->access$602(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z

    const-string v1, "hideSelector"

    invoke-static {v0, v1, v2, v2}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$2;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$2;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->removePromptView()V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isAbove()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isAbove:Z

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x3e

    move/from16 v0, p1

    if-eq v0, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v15}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v15

    if-gez v15, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v15

    if-nez v15, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v15}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v8

    .local v8, "curIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v15}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isAboveAnchor()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v4, 0x1

    .local v4, "below":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .local v2, "adapter":Landroid/widget/ListAdapter;
    const v9, 0x7fffffff

    .local v9, "firstItem":I
    const/high16 v10, -0x80000000

    .local v10, "lastItem":I
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    .local v3, "allEnabled":Z
    if-eqz v3, :cond_5

    const/4 v9, 0x0

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .end local v3    # "allEnabled":Z
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    const/16 v15, 0x13

    move/from16 v0, p1

    if-ne v0, v15, :cond_2

    if-le v8, v9, :cond_3

    :cond_2
    if-nez v4, :cond_6

    const/16 v15, 0x14

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    if-lt v8, v10, :cond_6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->clearListSelection()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    const/4 v15, 0x1

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "below":Z
    .end local v8    # "curIndex":I
    .end local v9    # "firstItem":I
    .end local v10    # "lastItem":I
    :goto_2
    return v15

    .restart local v8    # "curIndex":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v3    # "allEnabled":Z
    .restart local v4    # "below":Z
    .restart local v9    # "firstItem":I
    .restart local v10    # "lastItem":I
    :cond_5
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/Boolean;

    aput-object v16, v5, v15

    .local v5, "clazz1":[Ljava/lang/Class;
    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v11, v15

    .local v11, "obj1":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    const-string v16, "lookForSelectablePosition"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5, v11}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "res":Ljava/lang/Object;
    check-cast v13, Ljava/lang/Integer;

    .end local v13    # "res":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/Boolean;

    aput-object v16, v6, v15

    .local v6, "clazz2":[Ljava/lang/Class;
    const/4 v15, 0x2

    new-array v12, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v12, v15

    .local v12, "obj2":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    const-string v16, "lookForSelectablePosition"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6, v12}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .local v14, "res2":Ljava/lang/Object;
    check-cast v14, Ljava/lang/Integer;

    .end local v14    # "res2":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_1

    .end local v3    # "allEnabled":Z
    .end local v5    # "clazz1":[Ljava/lang/Class;
    .end local v6    # "clazz2":[Ljava/lang/Class;
    .end local v11    # "obj1":[Ljava/lang/Object;
    .end local v12    # "obj2":[Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    const/16 v16, 0x0

    # setter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static/range {v15 .. v16}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->access$602(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .local v7, "consumed":Z
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v15}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "below":Z
    .end local v7    # "consumed":Z
    .end local v8    # "curIndex":I
    .end local v9    # "firstItem":I
    .end local v10    # "lastItem":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v4    # "below":Z
    .restart local v7    # "consumed":Z
    .restart local v8    # "curIndex":I
    .restart local v9    # "firstItem":I
    .restart local v10    # "lastItem":I
    :sswitch_0
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_8
    if-eqz v4, :cond_9

    const/16 v15, 0x14

    move/from16 v0, p1

    if-ne v0, v15, :cond_9

    if-ne v8, v10, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_9
    if-nez v4, :cond_7

    const/16 v15, 0x13

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    if-ne v8, v9, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->dismiss()V

    goto :goto_0

    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->dismiss()V

    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    .local v1, "list":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .end local v1    # "list":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preBuildListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mModal:Z

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    .local v0, "showing":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    .local v0, "list":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->access$602(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->buildDropDown()I

    move-result v7

    .local v7, "height":I
    const/4 v4, 0x0

    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v8

    .local v8, "noInputMethod":Z
    new-array v6, v1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v2

    .local v6, "clazz":[Ljava/lang/Class;
    new-array v9, v1, [Ljava/lang/Object;

    if-nez v8, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    .local v9, "objs":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    const-string v10, "setAllowScrollingAnchorParent"

    invoke-static {v0, v10, v6, v9}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    new-instance v10, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;

    invoke-direct {v10, p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    invoke-virtual {v0, v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setAboveAnchorListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    const/4 v4, -0x1

    :goto_1
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    if-eqz v8, :cond_4

    move v5, v7

    :goto_2
    if-eqz v8, :cond_6

    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v10, v0, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWindowLayoutMode(II)V

    :goto_4
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-boolean v3, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    :goto_6
    return-void

    .end local v9    # "objs":[Ljava/lang/Object;
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v9    # "objs":[Ljava/lang/Object;
    :cond_2
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v11, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v10, v0, v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    if-ne v0, v11, :cond_9

    move v5, v7

    goto :goto_4

    :cond_9
    iget v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    const/4 v4, -0x1

    :goto_8
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    const/4 v5, -0x1

    :goto_9
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, v4, v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setClipToScreenEnabled(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-boolean v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v10, :cond_12

    iget-boolean v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v10, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHorizontalOffset:I

    iget v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownVerticalOffset:I

    iget v11, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->clearListSelection()V

    :cond_d
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mHideSelector:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_e
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    if-ne v0, v11, :cond_f

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWidth(I)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v0, v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWidth(I)V

    goto :goto_8

    :cond_10
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    if-ne v0, v11, :cond_11

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v0, v7}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v10, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v0, v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_a
.end method

.method public updatePromptView(Z)V
    .locals 6
    .param p1, "isAbove"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getPromptPosition()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setPromptPosition(I)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "dropDownView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view0":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view1":Landroid/view/View;
    if-eqz p1, :cond_3

    instance-of v3, v2, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .end local v0    # "dropDownView":Landroid/view/ViewGroup;
    .end local v1    # "view0":Landroid/view/View;
    .end local v2    # "view1":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getPromptPosition()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setPromptPosition(I)V

    goto :goto_0

    .restart local v0    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v1    # "view0":Landroid/view/View;
    .restart local v2    # "view1":Landroid/view/View;
    :cond_3
    instance-of v3, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
