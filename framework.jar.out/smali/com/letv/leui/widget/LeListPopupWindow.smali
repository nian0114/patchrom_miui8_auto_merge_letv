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
    .line 59
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

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
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

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    iput v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    .line 72
    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScrollListener:Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    .line 351
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    .line 582
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    .line 599
    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    .line 876
    const v2, 0x7fffffff

    iput v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mListItemExpandMaximum:I

    .line 877
    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    .line 878
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->initPopupDrawable()V

    .line 91
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->setPopupBackground(Z)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setArrowVisible(Z)V

    .line 94
    new-instance v2, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v2, p1, v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    .line 95
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 97
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    new-instance v1, Lcom/letv/leui/widget/LeListPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPopupWindow$1;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScrollListener:Lcom/letv/leui/widget/LeListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeListPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LeListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/letv/leui/widget/LeListPopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    return-object v0
.end method

.method private removePromptView()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 183
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 184
    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 188
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private setPopupBackground(Z)V
    .locals 1
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    .line 323
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    if-eqz p1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    :goto_1
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method protected buildDropDown()Landroid/graphics/Point;
    .locals 31

    .prologue
    .line 386
    const/16 v24, 0x0

    .line 387
    .local v24, "otherHeights":I
    new-instance v27, Landroid/graphics/Point;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Point;-><init>()V

    .line 388
    .local v27, "point":Landroid/graphics/Point;
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    .line 389
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mContext:Landroid/content/Context;

    .line 391
    .local v11, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    .line 392
    .local v12, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 403
    .local v20, "hintView":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 406
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 407
    .local v18, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 409
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 413
    .local v19, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    packed-switch v3, :pswitch_data_0

    .line 430
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 431
    .local v30, "widthSpec":I
    const/16 v17, 0x0

    .line 432
    .local v17, "heightSpec":I
    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 434
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 435
    .restart local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v24, v3, v4

    .line 438
    move-object/from16 v12, v18

    .line 441
    .end local v17    # "heightSpec":I
    .end local v18    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 442
    .local v16, "headerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    .line 443
    .local v15, "footerView":Landroid/view/View;
    if-nez v16, :cond_3

    if-eqz v15, :cond_9

    .line 446
    :cond_3
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v13, "edageContainer":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 449
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v14, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 452
    .local v14, "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v16, :cond_4

    .line 453
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    :cond_4
    if-eqz v15, :cond_6

    .line 457
    if-nez v16, :cond_5

    .line 458
    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    :cond_5
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    :cond_6
    if-eqz v16, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 465
    .restart local v30    # "widthSpec":I
    const/16 v17, 0x0

    .line 466
    .restart local v17    # "heightSpec":I
    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 468
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    .restart local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .line 473
    .end local v17    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_7
    if-eqz v15, :cond_8

    .line 474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 475
    .restart local v30    # "widthSpec":I
    const/16 v17, 0x0

    .line 476
    .restart local v17    # "heightSpec":I
    move/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 478
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .restart local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .line 483
    .end local v17    # "heightSpec":I
    .end local v30    # "widthSpec":I
    :cond_8
    move-object v12, v13

    .line 486
    .end local v13    # "edageContainer":Landroid/widget/LinearLayout;
    .end local v14    # "edageParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v12}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 500
    .end local v11    # "context":Landroid/content/Context;
    .end local v15    # "footerView":Landroid/view/View;
    .end local v16    # "headerView":Landroid/view/View;
    .end local v20    # "hintView":Landroid/view/View;
    :cond_a
    :goto_1
    const/16 v25, 0x0

    .line 501
    .local v25, "padding":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 502
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_e

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v25, v3, v4

    .line 509
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v3, :cond_b

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupVerticalOffset:I

    .line 517
    :cond_b
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/16 v21, 0x1

    .line 518
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

    .line 521
    .local v23, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mAlwaysVisible:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 523
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 524
    add-int v3, v23, v25

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 562
    :goto_4
    return-object v27

    .line 415
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

    .line 416
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 420
    :pswitch_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 488
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "dropDownView":Landroid/view/ViewGroup;
    .end local v18    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "hintView":Landroid/view/View;
    :cond_d
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 489
    .restart local v12    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v28, v0

    .line 490
    .local v28, "view":Landroid/view/View;
    if-eqz v28, :cond_a

    .line 491
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 493
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

    .line 513
    .end local v19    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "view":Landroid/view/View;
    .restart local v10    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "padding":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    .line 517
    :cond_f
    const/16 v21, 0x0

    goto :goto_3

    .line 528
    .restart local v21    # "ignoreBottomDecorations":Z
    .restart local v23    # "maxHeight":I
    :cond_10
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 530
    .local v26, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v26, :cond_11

    .line 531
    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    .end local v26    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 536
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

    .line 537
    .local v29, "widthPixels":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    packed-switch v3, :pswitch_data_1

    .line 549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 554
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

    .line 558
    .local v22, "listContent":I
    if-lez v22, :cond_12

    add-int v24, v24, v25

    .line 560
    :cond_12
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v25

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 561
    add-int v3, v22, v24

    move-object/from16 v0, v27

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_4

    .line 539
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

    .line 542
    .restart local v5    # "childWidthSpec":I
    goto :goto_5

    .line 544
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

    .line 547
    .restart local v5    # "childWidthSpec":I
    goto :goto_5

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 537
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

    .line 260
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 261
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 262
    .local v7, "hOffset":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, "anchorView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 264
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v7, v11, Landroid/graphics/Rect;->right:I

    .line 270
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 271
    .local v0, "anchorPaddingLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 272
    .local v1, "anchorPaddingRight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 274
    .local v3, "anchorWidth":I
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    if-ne v11, v13, :cond_5

    .line 275
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v11, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/letv/leui/widget/LeListPopupWindow;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 277
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

    .line 280
    .local v6, "contentWidthLimit":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 281
    .local v10, "widthMeasureSpec":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 282
    .local v8, "heightMeasureSpec":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    if-eqz v11, :cond_0

    .line 283
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_0

    .line 284
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 288
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 292
    :cond_0
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    if-eqz v11, :cond_1

    .line 293
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_1

    .line 294
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 298
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 302
    :cond_1
    if-le v5, v6, :cond_2

    .line 303
    move v5, v6

    .line 305
    :cond_2
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    .line 316
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    .end local v8    # "heightMeasureSpec":I
    .end local v10    # "widthMeasureSpec":I
    :goto_1
    return-void

    .line 265
    .end local v0    # "anchorPaddingLeft":I
    .end local v1    # "anchorPaddingRight":I
    .end local v3    # "anchorWidth":I
    :cond_3
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    neg-int v7, v11

    goto/16 :goto_0

    .line 267
    :cond_4
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iput v14, v12, Landroid/graphics/Rect;->right:I

    iput v14, v11, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 306
    .restart local v0    # "anchorPaddingLeft":I
    .restart local v1    # "anchorPaddingRight":I
    .restart local v3    # "anchorWidth":I
    :cond_5
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 307
    sub-int v11, v3, v0

    sub-int/2addr v11, v1

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    goto :goto_1

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 310
    .local v9, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_7

    .line 311
    iget-object v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 312
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    iget-object v12, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    .line 314
    :cond_7
    iget v11, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPopupWidth:I

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/LeListPopupWindow;->setContentWidth(I)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 576
    invoke-super {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->dismiss()V

    .line 577
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->removePromptView()V

    .line 579
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mResizePopupRunnable:Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public initPopupDrawable()V
    .locals 4

    .prologue
    const/high16 v3, 0x41000000    # 8.0f

    .line 344
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 345
    .local v0, "color":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 346
    new-instance v1, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FLandroid/content/res/ColorStateList;Z)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 348
    new-instance v1, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v0, v2}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FLandroid/content/res/ColorStateList;Z)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 349
    :cond_1
    return-void
.end method

.method public isDropDownOnTouchResizeEnabled()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    return v0
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 217
    const/4 v8, 0x0

    .line 256
    :cond_0
    :goto_0
    return v8

    .line 220
    :cond_1
    const/4 v8, 0x0

    .line 221
    .local v8, "width":I
    const/4 v5, 0x0

    .line 222
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 223
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 225
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 230
    .local v2, "heightMeasureSpec":I
    const/4 v7, 0x0

    .line 231
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    const/16 v11, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 232
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 233
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 234
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 235
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 236
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 237
    move v4, v6

    .line 238
    const/4 v5, 0x0

    .line 240
    :cond_2
    iget-object v10, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 241
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 242
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 247
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 252
    iget-object v10, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 253
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
    .line 319
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow;->setPopupBackground(Z)V

    .line 320
    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 357
    .local v1, "anchorWidth":I
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 359
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 360
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 362
    add-int v5, p2, p4

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isClippingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int p2, v5, p4

    .line 366
    :cond_0
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mScreenLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    div-int/lit8 v6, v1, 0x2

    add-int v0, v5, v6

    .line 367
    .local v0, "anchorCenterX":I
    div-int/lit8 v5, p4, 0x2

    add-int v3, p2, v5

    .line 369
    .local v3, "contentCenterX":I
    sub-int v2, v0, v3

    .line 370
    .local v2, "arrowOffset":I
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    if-le v2, v5, :cond_1

    .line 371
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v5, -0x8

    .line 373
    :cond_1
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    neg-int v5, v5

    if-ge v2, v5, :cond_2

    .line 374
    sget v5, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    sub-int v5, p4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x8

    neg-int v2, v5

    .line 377
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 378
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mCurrentBgDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v5, v2}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowOffset(I)V

    .line 381
    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 146
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 151
    :cond_1
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setArrowVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/LePopupDrawable;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable;->setArrowVisible(Z)V

    .line 341
    :cond_1
    return-void
.end method

.method public setDropDownOnTouchResizeEnabled(Z)V
    .locals 0
    .param p1, "dropDownResizeOnTouch"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z

    .line 590
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .line 204
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mFooterView:Landroid/view/View;

    .line 208
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    .line 212
    :cond_1
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .line 192
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->removeView(Landroid/view/View;)V

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mHeaderView:Landroid/view/View;

    .line 196
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    .line 200
    :cond_1
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 121
    :cond_0
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mModal:Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow;->setFocusable(Z)V

    .line 126
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eq v0, p1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 157
    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eq v0, p1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 163
    :cond_0
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptPosition:I

    .line 134
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    .line 167
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->removePromptView()V

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mPromptView:Landroid/view/View;

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    .line 174
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow;->computeContentWidth()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow;->mTouchInterceptor:Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 571
    invoke-super {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->show()V

    .line 572
    return-void
.end method
