.class public Lcom/letv/leui/widget/picker/DateWheel;
.super Landroid/widget/LinearLayout;
.source "DateWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;,
        Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;
    }
.end annotation


# static fields
.field public static MAX_YEAR:I

.field public static MIN_YEAR:I


# instance fields
.field private context:Landroid/content/Context;

.field private curDay:I

.field private curMonth:I

.field private curYear:I

.field current:Z

.field private dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

.field private dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private dayIndex:I

.field private dayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dayView:Lcom/letv/leui/widget/picker/WheelView;

.field private days:[Ljava/lang/String;

.field private days_en:[Ljava/lang/String;

.field private days_zh:[Ljava/lang/String;

.field private initDay:I

.field private initMonth:I

.field private initYear:I

.field private isCyclic:Z

.field private isEnglish:Z

.field private isLunar:Z

.field private isReturnLunar:Z

.field private isTimed:Z

.field private itemHeiht:I

.field private lunar:Lcom/letv/leui/pim/lunar/Lunar;

.field private lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

.field private mCalendar:Ljava/util/Calendar;

.field private mLeapMonth:I

.field private mTimedDate:Ljava/util/Calendar;

.field private monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private monthIndex:I

.field private monthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monthView:Lcom/letv/leui/widget/picker/WheelView;

.field private months:[Ljava/lang/String;

.field pattern:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;

.field private yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private yearIndex:I

.field private yearList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yearView:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x76d

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    const/16 v0, 0x7f5

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return p1
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return p1
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    return v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyInitDayView(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return v0
.end method

.method static synthetic access$2402(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return p1
.end method

.method static synthetic access$2500(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    return p1
.end method

.method static synthetic access$2700(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    return-object v0
.end method

.method private getDayIndex(III)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x5

    if-eq p2, v1, :cond_4

    const/4 v1, 0x7

    if-eq p2, v1, :cond_4

    const/16 v1, 0x8

    if-eq p2, v1, :cond_4

    const/16 v1, 0xa

    if-eq p2, v1, :cond_4

    const/16 v1, 0xc

    if-ne p2, v1, :cond_5

    :cond_4
    const/16 v1, 0x1f

    if-gt p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x1d

    if-gt p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_6
    const/16 v1, 0x1c

    if-gt p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_7
    const/16 v1, 0x1e

    if-gt p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method private initAction()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900a4

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .local v2, "language":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    :goto_0
    const v3, 0x1020423

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const v3, 0x1020429

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const v3, 0x1020421

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v7, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    goto :goto_0

    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initAction()V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLeapYear(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "year":I
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_1

    :cond_0
    rem-int/lit16 v1, v0, 0x190

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private modifyDayView(II)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/16 v7, 0x1f

    const/16 v6, 0xc

    const/16 v2, 0x1e

    const/16 v4, 0x1d

    const/16 v3, 0x1c

    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    .local v0, "days_num":I
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v6, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_8

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    :cond_2
    :goto_1
    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    :cond_4
    return-void

    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v2, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x10405e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "days_num":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "days_num":I
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    :cond_a
    const/4 v5, 0x1

    if-eq p2, v5, :cond_b

    const/4 v5, 0x3

    if-eq p2, v5, :cond_b

    const/4 v5, 0x5

    if-eq p2, v5, :cond_b

    const/4 v5, 0x7

    if-eq p2, v5, :cond_b

    const/16 v5, 0x8

    if-eq p2, v5, :cond_b

    const/16 v5, 0xa

    if-eq p2, v5, :cond_b

    if-ne p2, v6, :cond_e

    :cond_b
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v7, :cond_4

    const/16 v0, 0x1f

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v7, :cond_d

    :goto_2
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_c
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_2

    :cond_e
    const/4 v5, 0x2

    if-ne p2, v5, :cond_12

    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_4

    const/16 v0, 0x1d

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v4, :cond_f

    move v2, v3

    :goto_5
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    :cond_f
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_5

    :cond_10
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v3, :cond_4

    const/16 v0, 0x1c

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v3, :cond_11

    const/16 v2, 0x1b

    :goto_6
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    :cond_11
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_6

    :cond_12
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_4

    const/16 v0, 0x1e

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v2, :cond_13

    move v2, v4

    :goto_7
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    :cond_13
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private modifyInitDayView(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "days_num":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "j":I
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-gt v3, v0, :cond_6

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    if-ge v3, v4, :cond_7

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    return-void

    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v3, v4

    goto :goto_3
.end method

.method private stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 2
    .param p2, "str"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    return-void
.end method

.method public getDay()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getDayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsLunar()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method public getIsTimed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method public getMonth()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMonthList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYear()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getYearList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 12

    .prologue
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v8, v9, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    .local v3, "isSameDate":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    sput v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    :cond_2
    sget v2, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .local v2, "i":I
    :goto_1
    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v2, v8, :cond_4

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v11, 0x10405e3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-nez v8, :cond_15

    if-eqz v3, :cond_6

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    :goto_3
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_a

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    :goto_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_b

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_5
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    :cond_7
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_9

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-nez v8, :cond_8

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    :cond_9
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    :cond_a
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    :cond_b
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_6
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :cond_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v7, v8, v9

    .local v7, "year":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    add-int/lit8 v4, v8, 0x1

    .local v4, "month":I
    const/4 v1, 0x0

    .local v1, "days_num":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_f

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v1, 0x1d

    :goto_7
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_13

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_12

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_8
    if-ge v2, v1, :cond_1e

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    const/16 v1, 0x1c

    goto :goto_7

    :cond_f
    const/4 v8, 0x1

    if-eq v4, v8, :cond_10

    const/4 v8, 0x3

    if-eq v4, v8, :cond_10

    const/4 v8, 0x5

    if-eq v4, v8, :cond_10

    const/4 v8, 0x7

    if-eq v4, v8, :cond_10

    const/16 v8, 0x8

    if-eq v4, v8, :cond_10

    const/16 v8, 0xa

    if-eq v4, v8, :cond_10

    const/16 v8, 0xc

    if-ne v4, v8, :cond_11

    :cond_10
    const/16 v1, 0x1f

    goto :goto_7

    :cond_11
    const/16 v1, 0x1e

    goto :goto_7

    :cond_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_9
    if-ge v2, v1, :cond_1e

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_14

    const/4 v2, 0x1

    :goto_a
    if-gt v2, v1, :cond_1e

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1e

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v1    # "days_num":I
    .end local v4    # "month":I
    .end local v7    # "year":I
    :cond_15
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-lt v8, v9, :cond_16

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v8, v9, :cond_18

    :cond_16
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    :goto_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeapMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_17
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_1a

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-gt v8, v9, :cond_1a

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x10405e2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "run":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "str":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v8, :cond_19

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_18
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmDay()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_c

    .restart local v5    # "run":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_19
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_e
    const/16 v8, 0xc

    if-ge v2, v8, :cond_1b

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    .local v0, "dayofMonth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v8, v9, :cond_21

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    sget v10, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge v8, v10, :cond_20

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    :goto_f
    iget v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v9, v8, v10}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    :goto_10
    const/16 v8, 0x1e

    if-ne v8, v0, :cond_22

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    :cond_1c
    :goto_11
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_1d

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-gt v8, v9, :cond_1d

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v9, :cond_1e

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeap()Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .end local v0    # "dayofMonth":I
    :cond_1e
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    :cond_1f
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_23

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    :goto_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_24

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_24

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    :goto_13
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .restart local v0    # "dayofMonth":I
    :cond_20
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    goto/16 :goto_f

    :cond_21
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v9}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_10

    :cond_22
    const/16 v8, 0x1d

    if-ne v8, v0, :cond_1c

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070064

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    goto/16 :goto_11

    .end local v0    # "dayofMonth":I
    :cond_23
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_12

    :cond_24
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13

    :cond_25
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13
.end method

.method public isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "a"    # Ljava/util/Calendar;
    .param p2, "b"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdateDate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v7, 0x1e

    const/16 v6, 0xc

    const/4 v0, 0x0

    .local v0, "day":I
    move v2, v0

    .local v2, "month":I
    move v4, v0

    .local v4, "year":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v8, :cond_4

    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    :goto_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v0, v6, :cond_1

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :cond_2
    const/4 v5, 0x0

    .local v5, "yearsize":I
    const/16 v6, 0x76c

    if-gt v4, v6, :cond_e

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1
    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, p0, v6, v7, v8}, Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;->onDateChange(Lcom/letv/leui/widget/picker/DateWheel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "yearsize":I
    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v1, 0x0

    .local v1, "isLeapMonth":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v8, v9, :cond_5

    const/4 v1, 0x1

    :cond_5
    const/4 v8, 0x3

    new-array v3, v8, [I

    .local v3, "solarInfo":[I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v8, v9, :cond_8

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v9, v9, 0x1

    if-le v9, v6, :cond_6

    :goto_3
    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v9, v9, 0x1

    if-le v9, v7, :cond_7

    :goto_4
    invoke-static {v8, v6, v7, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    :goto_5
    const/4 v6, 0x0

    aget v4, v3, v6

    aget v6, v3, v10

    add-int/lit8 v2, v6, -0x1

    const/4 v6, 0x2

    aget v0, v3, v6

    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-le v9, v6, :cond_9

    :goto_6
    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v9, v9, 0x1

    if-le v9, v7, :cond_a

    :goto_7
    invoke-static {v8, v6, v7, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    goto :goto_5

    :cond_9
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto :goto_6

    :cond_a
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v9, v9, 0x1

    if-le v9, v6, :cond_c

    :goto_8
    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v9, v9, 0x1

    if-le v9, v7, :cond_d

    :goto_9
    invoke-static {v8, v6, v7, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    goto :goto_5

    :cond_c
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .end local v1    # "isLeapMonth":Z
    .end local v3    # "solarInfo":[I
    .restart local v5    # "yearsize":I
    :cond_e
    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, v4, v6

    goto/16 :goto_1

    .end local v5    # "yearsize":I
    :cond_f
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    if-eqz v6, :cond_3

    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v4, v6, :cond_10

    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v6, :cond_10

    const/16 v4, 0x76c

    :cond_10
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    invoke-interface {v6, p0, v4, v2, v0}, Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V

    goto/16 :goto_2
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;Z)V

    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;ZZ)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z

    .prologue
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .local v0, "isSameDate":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eq p3, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .end local v0    # "isSameDate":Z
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "isSameDate":Z
    :cond_2
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .end local v0    # "isSameDate":Z
    :goto_1
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    iput-boolean p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    goto :goto_1
.end method

.method public setCalendar(Ljava/util/Calendar;ZZZ)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z
    .param p4, "isReturnLunar"    # Z

    .prologue
    iput-boolean p4, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_2
    return-void
.end method

.method public setCenterTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    return-void
.end method

.method public setDrawMask(Z)V
    .locals 1
    .param p1, "isDraw"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    return-void
.end method

.method public setIsTimed(Z)V
    .locals 1
    .param p1, "istimed"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    goto :goto_0
.end method

.method public setItemTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    return-void
.end method

.method public setMaxYear(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    return-void
.end method

.method public setMinYear(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    return-void
.end method

.method public setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setVisibleItems(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "b"    # Z

    .prologue
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :cond_0
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt p1, v5, :cond_1

    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge p1, v5, :cond_3

    const/16 v5, 0x76c

    if-eq p1, v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v5, v6, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge v5, v6, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_b

    invoke-static {p1, p2, p3}, Lcom/letv/leui/widget/picker/LunarCalendar;->solarToLunar(III)[I

    move-result-object v2

    .local v2, "lunarInfo":[I
    const/4 v5, 0x0

    aget p1, v2, v5

    const/4 v5, 0x1

    aget p2, v2, v5

    const/4 v5, 0x2

    aget p3, v2, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    aget v5, v2, v5

    if-ge p2, v5, :cond_5

    const/4 v5, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 p2, p2, -0x1

    :cond_5
    if-eqz p4, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v5, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v1

    .local v1, "leapMonth":I
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v5, v1, :cond_7

    iput v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v6, 0xc

    if-le v5, v6, :cond_8

    :cond_6
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .end local v1    # "leapMonth":I
    :cond_7
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 p2, p2, 0x1

    .end local v2    # "lunarInfo":[I
    :goto_1
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iput p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v5, :cond_c

    const/16 v5, 0x76c

    if-ne p1, v5, :cond_c

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->getDayIndex(III)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    goto/16 :goto_0

    .restart local v1    # "leapMonth":I
    .restart local v2    # "lunarInfo":[I
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v6, 0x10405e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "run":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v0, v5, :cond_a

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_4
    const/16 v5, 0xc

    if-ge v0, v5, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "leapMonth":I
    .end local v2    # "lunarInfo":[I
    .end local v3    # "run":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto/16 :goto_1

    :cond_c
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    goto/16 :goto_2
.end method
