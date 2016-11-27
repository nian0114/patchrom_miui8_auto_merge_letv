.class public Lcom/letv/leui/widget/LeBottomSheet;
.super Landroid/app/Dialog;
.source "LeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;,
        Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    }
.end annotation


# static fields
.field public static final BTN_CFM_COLOR_BLUE:I = -0xdc6a12

.field public static final BTN_CFM_COLOR_RED:I = -0x14c1d2

.field public static final BUTTON_DEFAULT_STYLE:I = 0x5

.field public static final BUTTON_HORIZONTAL_TITLE_CONTENT:I = 0x1

.field public static final BUTTON_PROGRESS:I = 0x6

.field public static final BUTTON_VERTICAL_TITLE_CONTENT:I = 0x3

.field public static final BUTTON_VERTICAL_TITLE_CONTENT_GAPLINE:I = 0x2

.field public static final BUTTON_VERTILCAL:I = 0x0

.field public static final DAY_MODE:I = 0x8

.field public static final DEFAULT_GRIDVIEW_ITEM_DELAY:F = 0.05f

.field public static final LISTVIEW:I = 0x0

.field public static final LISTVIEW_TITLE:I = 0x1

.field public static final NIGHT_MODE:I = 0x7

.field public static final SWITCH_BUTTON_STYLE_DIY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LeBottomSheet"

.field private static density:F


# instance fields
.field private ListItemColor:I

.field private MaxItemNum:I

.field private adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

.field private animateToTextViewColor:Z

.field private boxBorderColor:I

.field private btnColor:[I

.field private btnStr:[Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_confirm:Landroid/widget/Button;

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private checkBox:Lcom/letv/leui/widget/LeCheckBox;

.field private checkBoxArrowColor:I

.field private checkBoxOffColor:I

.field private checkBoxOnColor:I

.field private checkIsOn:Z

.field private checkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private checkPos:I

.field private checkbox_ctn:Landroid/widget/LinearLayout;

.field private checkedIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private content:Landroid/widget/TextView;

.field private contentAtCenter:Z

.field private diyLine1:Landroid/widget/ImageView;

.field private diyLine2:Landroid/widget/ImageView;

.field private gapLine_1:Landroid/widget/ImageView;

.field private gapLine_2:Landroid/widget/ImageView;

.field private gapLine_3:Landroid/widget/ImageView;

.field private gridView:Landroid/widget/GridView;

.field private iconView:Landroid/widget/ImageView;

.field private isChangeItemColor:Z

.field private isSelected:[Z

.field private isShowDivideLine:Z

.field private isSinglebox:Z

.field private itemColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemLimit:Z

.field private itemNum:I

.field private layoutForDiy:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private listviewTitle_tailImg:Landroid/widget/ImageView;

.field private listviewTitle_tailText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/letv/leui/widget/LeBottomSheet;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

.field private mLinkMovementEnabled:Z

.field private mListCustomView:Z

.field private mMenuView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private maxHeightInPixel:I

.field private menuContainer:Landroid/view/ViewGroup;

.field private moreItem:Z

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private showMode:I

.field private slideFromTop:Z

.field private style:I

.field private subTitle:Landroid/widget/TextView;

.field private tailTextColor:I

.field private title:Landroid/widget/TextView;

.field private unableItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private usePressEffect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    iput-object p0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0, p1, v2}, Lcom/letv/leui/widget/LeBottomSheet;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    const v0, 0x1030520

    if-ne p2, v0, :cond_0

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    :cond_0
    iput-object p0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBottomSheet;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z
    .param p3, "isWithOut"    # Z

    .prologue
    if-eqz p3, :cond_0

    const v0, 0x103051e

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;I)V

    return-void

    :cond_0
    const v0, 0x103051c

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    return v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/LeBottomSheet;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    return v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    return v0
.end method

.method static synthetic access$1900(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    return v0
.end method

.method static synthetic access$2400(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/letv/leui/widget/LeBottomSheet;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    return v0
.end method

.method static synthetic access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/letv/leui/widget/LeBottomSheet;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    return-object v0
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    sget v0, Lcom/letv/leui/widget/LeBottomSheet;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getWidget()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x1090091

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->subTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private getWidgetForThreeBtn()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x1090093

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private inflateCustomLayout(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slideFromTop"    # Z

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/letv/leui/widget/LeBottomSheet;->density:F

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "dialogWindow":Landroid/view/Window;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109008e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    :cond_1
    return-void

    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method private setBottomButton()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    array-length v0, v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$10;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$10;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$11;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$11;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const v1, 0x1040625

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const v1, 0x1040633

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setContentView()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$13;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$13;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setDialogWidth()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "dialogWindow":Landroid/view/Window;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private setNightMode()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const v6, 0x108051f

    const/4 v5, -0x1

    const v4, 0x1effffff

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v3, -0x1aebebec

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_5
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_6
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_7
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeCheckBox;->setTextColor(I)V

    :cond_a
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_b
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_c
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_d

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_f
    return-void
.end method

.method private setProgress(Ljava/lang/CharSequence;[Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "btn_text"    # [Ljava/lang/String;
    .param p3, "btnCfmColor"    # I
    .param p4, "listener_cfm"    # Landroid/view/View$OnClickListener;

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidget()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v3

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    const v2, -0x131314

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080517

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public appear()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomSheet;->show()V

    return-void
.end method

.method public disappear()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getBtn_cancel()Landroid/widget/Button;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public getBtn_confirm()Landroid/widget/Button;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method public getCheckBoxItemColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    return v0
.end method

.method public getCheckPos()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return v0
.end method

.method public getContent()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayoutForDiy()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListviewDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;
    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$1200(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListviewTitle_tailImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListviewTitle_tailText()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMaxHeightInPixel()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    return v0
.end method

.method public getMaxItemNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    return v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method public getmMenuView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public isCheckIsOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return v0
.end method

.method public isLinkMovementEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    return v0
.end method

.method public setBoxBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    return-void
.end method

.method public setBtnDivideLineShow(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isShowDivideLine:Z

    return-void
.end method

.method public setCheckBoxItemColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    return-void
.end method

.method public setCheckIsOn(Z)V
    .locals 0
    .param p1, "checkIsOn"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return-void
.end method

.method public setCheckPos(I)V
    .locals 2
    .param p1, "checkPos"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 2
    .param p1, "close"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    return-void
.end method

.method public setContentAtCenter(Z)V
    .locals 2
    .param p1, "contentAtCenter"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    return-void
.end method

.method public setItemColor(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setItemLimit(Z)V
    .locals 0
    .param p1, "itemLimit"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    return-void
.end method

.method public setItemText(ILjava/lang/String;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$1200(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$1200(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$3000(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "adapterStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->hasIcon:Z
    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$3100(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;
    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$1200(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->access$3000(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-gt v4, p1, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-gt p1, v4, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "ChildView":Landroid/view/View;
    if-eqz v0, :cond_4

    const v4, 0x10203ff

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "ChildView":Landroid/view/View;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setLinkMovementEnabled(Z)V
    .locals 0
    .param p1, "linkMovementEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    return-void
.end method

.method public setListCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    return-void
.end method

.method public setMaxHeightInPixel(I)V
    .locals 0
    .param p1, "maxHeightInPixel"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    return-void
.end method

.method public setMaxItemNum(I)V
    .locals 0
    .param p1, "maxItemNum"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    return-void
.end method

.method public setOnItemClickChangeItemColor(Z)V
    .locals 0
    .param p1, "isChange"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    return-void
.end method

.method public setShowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    goto :goto_0
.end method

.method public setSinglebox(Z)V
    .locals 0
    .param p1, "isSinglebox"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "layoutResource"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;

    .prologue
    const v9, -0x14c1d2

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;
    .param p9, "btnCfmColor"    # I
    .param p10, "useDiyLayout"    # Z

    .prologue
    const/4 v0, 0x2

    new-array v9, v0, [I

    const/4 v0, 0x0

    aput p9, v9, v0

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    aput v1, v9, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;
    .param p9, "btnColors"    # [I
    .param p10, "useDiyLayout"    # Z

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p9, v0

    invoke-direct {p0, p6, p5, v0, p2}, Lcom/letv/leui/widget/LeBottomSheet;->setProgress(Ljava/lang/CharSequence;[Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidget()V

    if-eqz p4, :cond_2

    if-nez p8, :cond_3

    :cond_2
    if-nez p6, :cond_3

    if-nez p7, :cond_3

    if-nez p10, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-eqz p10, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    if-nez p10, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    if-eqz p4, :cond_8

    if-eqz p8, :cond_8

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p10, :cond_9

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    if-eqz p5, :cond_c

    array-length v0, p5

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    array-length v0, p9

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget v1, p9, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_c
    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    :goto_4
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :cond_e
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p8}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_12

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p4}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_12
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$12;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$12;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_13
    array-length v0, p5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    array-length v0, p9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v1, p5, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget v1, p9, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;)V
    .locals 6
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;Z)V

    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;Z)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "WithSubTitle"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const-string v6, "LeBottomSheet"

    const-string v7, "LeBottomSheet"

    const/4 v8, 0x0

    const v9, -0x14c1d2

    const/4 v10, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "btn_listener"    # Landroid/view/View$OnClickListener;
    .param p6, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "btn_listener"    # Landroid/view/View$OnClickListener;
    .param p6, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p7, "noCheckbox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v1, 0x1090095

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOverScrollMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_8

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_a

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-direct {v2, p1, v3, p3}, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, p4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    if-eqz p5, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p7, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    :cond_5
    if-eqz p6, :cond_6

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1, p6}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$4;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeBottomSheet$4;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :cond_7
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void

    :cond_8
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_9

    const/high16 v1, 0x432e0000    # 174.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_a
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    const v3, 0x1090094

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$3;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    const v1, 0x10a0044

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .local v6, "animation":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v7, v6}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .local v7, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v7, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x10203f7
        0x10203f8
    .end array-data
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZ)V

    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V

    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .param p8, "WithTitleTail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .param p8, "WithTeTail"    # Z
    .param p9, "btnListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZZ",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSelected:[Z

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    if-ge v8, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSelected:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    packed-switch p6, :pswitch_data_0

    const v1, 0x1090098

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    if-le v1, v2, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    :goto_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isShowDivideLine:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$7;

    invoke-direct {v2, p0, p4}, Lcom/letv/leui/widget/LeBottomSheet$7;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    if-eqz p9, :cond_7

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    :goto_2
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :goto_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setBottomButton()V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$8;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeBottomSheet$8;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .local v9, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$9;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$9;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void

    .end local v9    # "vto":Landroid/view/ViewTreeObserver;
    :pswitch_0
    const v1, 0x1090099

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020415

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020417

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020413

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020416

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020410

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020414

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020411

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020412

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    if-le v1, v2, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    :goto_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x393835

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "btnText"    # Ljava/lang/String;
    .param p8, "WithTailImg"    # Z
    .param p9, "btnListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;ZIZZLcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "hasLogo"    # Z
    .param p5, "style"    # I
    .param p6, "WithTailImg"    # Z
    .param p7, "WithTitleTail"    # Z
    .param p8, "botOnClickListener"    # Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    .param p9, "btnStr"    # [Ljava/lang/String;
    .param p10, "btnColor"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "ZIZZ",
            "Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;",
            "[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V

    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "imgResource"    # I
    .param p6, "permissionText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x1090090

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$2;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    aget-object v1, p4, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "permissionText"    # Ljava/lang/CharSequence;

    .prologue
    const v7, -0xdc6a12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "permissionText"    # Ljava/lang/CharSequence;
    .param p7, "btnCfmColor"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x1090090

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    if-nez p5, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$1;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x109008f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void
.end method

.method public setStyleForTopSlideinListView(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/AdapterView$OnItemClickListener;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "actionString"    # [Ljava/lang/String;
    .param p5, "btnString"    # Ljava/lang/String;
    .param p6, "btnListener"    # Landroid/view/View$OnClickListener;
    .param p7, "exitListner"    # Landroid/view/View$OnClickListener;
    .param p8, "itemListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p9, "actionBarColor"    # I
    .param p10, "btnTextColor"    # I
    .param p11, "actionBarTextColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    :goto_0
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    goto :goto_1

    :cond_2
    const v1, 0x109009a

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020410

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020414

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020416

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020411

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020415

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .local v7, "actionBar":Landroid/widget/LinearLayout;
    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    if-eqz p7, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p6, :cond_a

    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    array-length v1, p4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_4
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_7
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p8, :cond_8

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$5;

    move-object/from16 v0, p8

    invoke-direct {v2, p0, p3, v0}, Lcom/letv/leui/widget/LeBottomSheet$5;-><init>(Lcom/letv/leui/widget/LeBottomSheet;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .local v9, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$6;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$6;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .end local v9    # "vto":Landroid/view/ViewTreeObserver;
    :cond_9
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void

    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p6, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_b
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method public setTailTextColor(I)V
    .locals 0
    .param p1, "tailTextColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    return-void
.end method

.method public setThreeBtn(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "contentText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "onClickListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnClickListener;>;"
    .local p2, "btn_texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "btn_colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x8

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidgetForThreeBtn()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, "temp":Landroid/widget/Button;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "temp":Landroid/widget/Button;
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .restart local v0    # "i":I
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    :cond_6
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    return-void
.end method

.method public setTrackBoxColor(III)V
    .locals 0
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I
    .param p3, "arrowColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    iput p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    iput p3, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    return-void
.end method

.method public setUnableItemIndex(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unableItemIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setUsePressEffect(Z)V
    .locals 0
    .param p1, "usePressEffect"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setDialogWidth()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
