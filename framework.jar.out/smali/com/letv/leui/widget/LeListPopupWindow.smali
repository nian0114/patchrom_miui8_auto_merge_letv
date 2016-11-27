.class public Lcom/letv/leui/widget/LeListPopupWindow;
.super Lcom/letv/leui/widget/LeBasePopupWindow;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;,
        Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;,
        Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;,
        Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;,
        Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;,
        Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field private static final HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1


# instance fields
.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownResizeOnTouch:Z

.field private mFooterView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

.field private mScreenLocation:[I

.field private final mScrollListener:Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

.field private final mTouchInterceptor:Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeListPopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScrollListener:Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    const v2, 0x7fffffff

    iput v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mListItemExpandMaximum:I

    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->initPopupDrawable()V

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->setPopupBackground(Z)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setArrowVisible(Z)V

    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v2, p1, v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    new-instance v1, Lcom/letv/leui/widget/LeListPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPopupWindow$1;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScrollListener:Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeListPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LeListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/widget/LeListPopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    return-object v0
.end method

.method private removePromptView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupBackground(Z)V
    .locals 1
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method protected buildDropDown()Landroid/graphics/Point;
    .locals 31

    .prologue
    const/16 v24, 0x0

    .local v24, "otherHeights":I
    new-instance v27, Landroid/graphics/Point;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Point;-><init>()V

    .local v27, "point":Landroid/graphics/Point;
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mContext:Landroid/content/Context;

    .local v11, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    .local v12, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v20, v0

    .local v20, "hintView":Landroid/view/View;
    if-eqz v20, :cond_2

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v18, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v19, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .local v30, "widthSpec":I
    const/16 v17, 0x0

    .local v17, "heightSpec":I
    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v24, v3, v4

    move-object/from16 v12, v18

    .end local v17    # "heightSpec":I
    .end local v18    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    move-object/from16 v16, v0

    .local v16, "headerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    .local v15, "footerView":Landroid/view/View;
    if-nez v16, :cond_3

    if-eqz v15, :cond_9

    :cond_3
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v13, "edageContainer":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v14, "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v15, :cond_6

    if-nez v16, :cond_5

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "widthSpec":I
    const/16 v17, 0x0

    .restart local v17    # "heightSpec":I
    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .end local v17    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_7
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "widthSpec":I
    const/16 v17, 0x0

    .restart local v17    # "heightSpec":I
    move/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .end local v17    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_8
    move-object v12, v13

    .end local v13    # "edageContainer":Landroid/widget/LinearLayout;
    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v12}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .end local v11    # "context":Landroid/content/Context;
    .end local v15    # "footerView":Landroid/view/View;
    .end local v16    # "headerView":Landroid/view/View;
    .end local v20    # "hintView":Landroid/view/View;
    :cond_a
    :goto_1
    const/16 v25, 0x0

    .local v25, "padding":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v25, v3, v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupVerticalOffset:I

    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/16 v21, 0x1

    .local v21, "ignoreBottomDecorations":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupVerticalOffset:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v4, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v23

    .local v23, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mAlwaysVisible:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->x:I

    add-int v3, v23, v25

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->y:I

    :goto_4
    return-object v27

    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v21    # "ignoreBottomDecorations":Z
    .end local v23    # "maxHeight":I
    .end local v25    # "padding":I
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v18    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v20    # "hintView":Landroid/view/View;
    :pswitch_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "dropDownView":Landroid/view/ViewGroup;
    .end local v18    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "hintView":Landroid/view/View;
    :cond_d
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .restart local v12    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v28, v0

    .local v28, "view":Landroid/view/View;
    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v24, v3, v4

    goto/16 :goto_1

    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "view":Landroid/view/View;
    .restart local v10    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "padding":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    :cond_f
    const/16 v21, 0x0

    goto :goto_3

    .restart local v21    # "ignoreBottomDecorations":Z
    .restart local v23    # "maxHeight":I
    :cond_10
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .local v26, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v26, :cond_11

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    .end local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    .local v29, "widthPixels":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    packed-switch v3, :pswitch_data_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "childWidthSpec":I
    :goto_5
    sget-object v3, Lcom/letv/leui/widget/LeListPopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    sub-int v8, v23, v24

    const/4 v9, -0x1

    invoke-virtual/range {v3 .. v9}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->measureHeightOfChildren(Landroid/widget/ListView;IIIII)I

    move-result v22

    .local v22, "listContent":I
    if-lez v22, :cond_12

    add-int v24, v24, v25

    :cond_12
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v25

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->x:I

    add-int v3, v22, v24

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_4

    .end local v5    # "childWidthSpec":I
    .end local v22    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int v3, v29, v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childWidthSpec":I
    goto :goto_5

    .end local v5    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int v3, v29, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childWidthSpec":I
    goto :goto_5

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

.method computeContentWidth()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "background":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, "hOffset":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    .local v2, "anchorView":Landroid/view/View;
    if-eqz v4, :cond_4

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v7, v11, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .local v0, "anchorPaddingLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .local v1, "anchorPaddingRight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .local v3, "anchorWidth":I
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    if-ne v11, v13, :cond_5

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v11, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/letv/leui/widget/LeListPopupWindow;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .local v5, "contentWidth":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v6, v11, v12

    .local v6, "contentWidthLimit":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, "widthMeasureSpec":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .local v8, "heightMeasureSpec":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    .end local v8    # "heightMeasureSpec":I
    .end local v10    # "widthMeasureSpec":I
    :goto_1
    return-void

    .end local v0    # "anchorPaddingLeft":I
    .end local v1    # "anchorPaddingRight":I
    .end local v3    # "anchorWidth":I
    :cond_3
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    neg-int v7, v11

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iput v14, v12, Landroid/graphics/Rect;->right:I

    iput v14, v11, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .restart local v0    # "anchorPaddingLeft":I
    .restart local v1    # "anchorPaddingRight":I
    .restart local v3    # "anchorWidth":I
    :cond_5
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    sub-int v11, v3, v0

    sub-int/2addr v11, v1

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .local v9, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    :cond_7
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->dismiss()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->removePromptView()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public initPopupDrawable()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public isDropDownOnTouchResizeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    return v0
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-nez p1, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    .local v8, "width":I
    const/4 v5, 0x0

    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "heightMeasureSpec":I
    const/4 v7, 0x0

    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    const/16 v11, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "end":I
    sub-int v0, v1, v7

    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    move v4, v6

    const/4 v5, 0x0

    :cond_2
    iget-object v10, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    iget-object v10, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v10, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method protected onPopupPositionChange(Z)V
    .locals 0
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow;->setPopupBackground(Z)V

    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "anchorWidth":I
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    add-int v5, p2, p4

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isClippingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int p2, v5, p4

    :cond_0
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    div-int/lit8 v6, v1, 0x2

    add-int v0, v5, v6

    .local v0, "anchorCenterX":I
    div-int/lit8 v5, p4, 0x2

    add-int v3, p2, v5

    .local v3, "contentCenterX":I
    sub-int v2, v0, v3

    .local v2, "arrowOffset":I
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    if-le v2, v5, :cond_1

    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v5, -0x8

    :cond_1
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    neg-int v5, v5

    if-ge v2, v5, :cond_2

    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    neg-int v2, v5

    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v5, v2}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowOffset(I)V

    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setArrowVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    :cond_1
    return-void
.end method

.method public setDropDownOnTouchResizeEnabled(Z)V
    .locals 0
    .param p1, "dropDownResizeOnTouch"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .local v0, "showing":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .local v0, "showing":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    :cond_0
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .local v0, "showing":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->computeContentWidth()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->show()V

    return-void
.end method
