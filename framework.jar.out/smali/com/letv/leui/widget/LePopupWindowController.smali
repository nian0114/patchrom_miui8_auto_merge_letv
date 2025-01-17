.class public Lcom/letv/leui/widget/LePopupWindowController;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindowController$SheetParams;,
        Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;,
        Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final MATCH_PARENT:I = -0x1

.field private static density:F

.field public static m_MyAlertContentViewId:I


# instance fields
.field private NegativeGapline:Landroid/widget/ImageView;

.field private NeutralGapline:Landroid/widget/ImageView;

.field private PositiveGapline:Landroid/widget/ImageView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Lcom/letv/leui/widget/LeButton;

.field private mButtonNegativeColor:I

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Lcom/letv/leui/widget/LeButton;

.field private mButtonNeutralColor:I

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Lcom/letv/leui/widget/LeButton;

.field private mButtonPositiveColor:I

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field protected mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field private mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLicenceMessage:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field private mListViewItemnum:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x10900bf

    sput v0, Lcom/letv/leui/widget/LePopupWindowController;->m_MyAlertContentViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    iput v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowController$1;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/letv/leui/widget/LePopupWindowController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/letv/leui/widget/LePopupWindowController;->density:F

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/letv/leui/widget/LePopupWindowController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1202(Lcom/letv/leui/widget/LePopupWindowController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$902(Lcom/letv/leui/widget/LePopupWindowController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePopupWindowController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListViewItemnum:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/letv/leui/widget/LePopupWindowController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    sget v0, Lcom/letv/leui/widget/LePopupWindowController;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "axxd"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCheckedItem:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lcom/letv/leui/widget/LePopupWindowController;->dip2px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListViewItemnum:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-interface {v3, v6, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "mView":Landroid/view/View;
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v0, v3

    .local v0, "height":F
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v3, 0x40b00000    # 5.5f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "height":F
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "mView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setupButtons()Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x1

    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x1020480

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeButton;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    sget-object v6, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x102047f

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->PositiveGapline:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->PositiveGapline:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x1020482

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeButton;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    sget-object v6, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x1020481

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->NegativeGapline:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->NegativeGapline:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x102047e

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeButton;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setHasStroke(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    sget-object v6, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v6, 0x102047d

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->NeutralGapline:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->NeutralGapline:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_3
    return v4

    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    if-eq v4, v8, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    iget v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    :cond_1
    or-int/2addr v3, v2

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    if-eq v4, v8, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    iget v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    :cond_3
    or-int/2addr v3, v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeButton;->setVisibility(I)V

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    if-eq v4, v8, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    iget v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    invoke-virtual {v4, v6}, Lcom/letv/leui/widget/LeButton;->setTextColor(I)V

    :cond_5
    or-int/2addr v3, v1

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x1020479

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v1, 0x102047a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupLicence()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "hasLicence":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v2, 0x10203e2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LePopupWindowController$3;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v6, 0x1020471

    const/16 v9, 0x8

    const/4 v1, 0x1

    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .local v0, "hasTextTitle":Z
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v5, 0x1020472

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v5, 0x1020473

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .end local v0    # "hasTextTitle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "hasTextTitle":Z
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 17

    .prologue
    const/4 v4, 0x0

    .local v4, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020475

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .restart local v4    # "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020476

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .local v10, "custom":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v1, v14, v15, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .end local v10    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020478

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .local v3, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/letv/leui/widget/LePopupWindowController;->setupContent(Landroid/widget/LinearLayout;)V

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupButtons()Z

    move-result v5

    .local v5, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020470

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .local v2, "topPanel":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .local v6, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/LePopupWindowController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .local v7, "hasTitle":Z
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupLicence()Z

    move-result v11

    .local v11, "hasLicence":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102047b

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .local v12, "licencePanel":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_8

    new-instance v1, Lcom/letv/leui/widget/LePopupWindowController$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/letv/leui/widget/LePopupWindowController$2;-><init>(Lcom/letv/leui/widget/LePopupWindowController;)V

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x102047c

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, "buttonPanel":Landroid/view/View;
    if-nez v5, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v14, 0x8

    if-ne v1, v14, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020474

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .local v13, "titleGapLine":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v13    # "titleGapLine":Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v14, 0x8

    if-eq v1, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020477

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .local v9, "contentGapLine":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v9    # "contentGapLine":Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/letv/leui/widget/LePopupWindowController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    return-void

    .end local v2    # "topPanel":Landroid/widget/LinearLayout;
    .end local v3    # "contentPanel":Landroid/widget/LinearLayout;
    .end local v5    # "hasButtons":Z
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "hasTitle":Z
    .end local v8    # "buttonPanel":Landroid/view/View;
    .end local v11    # "hasLicence":Z
    .end local v12    # "licencePanel":Landroid/widget/LinearLayout;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const v14, 0x1020475

    invoke-virtual {v1, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v2    # "topPanel":Landroid/widget/LinearLayout;
    .restart local v3    # "contentPanel":Landroid/widget/LinearLayout;
    .restart local v5    # "hasButtons":Z
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    .restart local v7    # "hasTitle":Z
    .restart local v11    # "hasLicence":Z
    .restart local v12    # "licencePanel":Landroid/widget/LinearLayout;
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLicenceCheckBox()Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public install()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/letv/leui/widget/LePopupWindowController;->m_MyAlertContentViewId:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupWindowController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_1
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonColor(II)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveColor:I

    :goto_0
    return-void

    :pswitch_1
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeColor:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralColor:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mForceInverseBackground:Z

    return-void
.end method

.method public setLicence(Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "licenceMessage"    # Ljava/lang/CharSequence;
    .param p2, "licenceListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mLicenceCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController;->mView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingTop:I

    iput p4, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingRight:I

    iput p5, p0, Lcom/letv/leui/widget/LePopupWindowController;->mViewSpacingBottom:I

    return-void
.end method
