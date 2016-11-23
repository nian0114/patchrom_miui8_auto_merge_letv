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

.field private density:F

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

.field private scaledDensity:F

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
    .line 48
    const/16 v0, 0x76d

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 49
    const/16 v0, 0x7f5

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    .line 57
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 58
    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 131
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    .line 57
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 58
    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 136
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    .line 57
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 58
    const-string v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 141
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return p1
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return p1
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    return v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyInitDayView(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return v0
.end method

.method static synthetic access$2402(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return p1
.end method

.method static synthetic access$2500(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    return p1
.end method

.method static synthetic access$2700(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    return-object v0
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 248
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDayIndex(III)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x0

    .line 740
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v0

    .line 744
    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v1, :cond_3

    .line 745
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 748
    :cond_2
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 752
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

    .line 754
    :cond_4
    const/16 v1, 0x1f

    if-gt p3, v1, :cond_0

    .line 755
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 758
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 759
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 761
    const/16 v1, 0x1d

    if-gt p3, v1, :cond_0

    .line 762
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 765
    :cond_6
    const/16 v1, 0x1c

    if-gt p3, v1, :cond_0

    .line 766
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 770
    :cond_7
    const/16 v1, 0x1e

    if-gt p3, v1, :cond_0

    .line 771
    add-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method private initAction()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 374
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 436
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 451
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/4 v5, 0x1

    const/4 v6, 0x5

    .line 211
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 212
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900a4

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    .line 214
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->density:F

    .line 215
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->scaledDensity:F

    .line 216
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 219
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "language":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 226
    :goto_0
    const v3, 0x102042c

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    .line 227
    const v3, 0x1020432

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    .line 228
    const v3, 0x102042a

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    .line 229
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    .line 232
    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v7, :cond_1

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    goto :goto_0

    .line 235
    .restart local v0    # "i":I
    :cond_1
    const/high16 v3, 0x41900000    # 18.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->dip2sp(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->setItemTextSize(I)V

    .line 236
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->dip2sp(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterTextSize(I)V

    .line 237
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 238
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initAction()V

    .line 239
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 240
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 241
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 242
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 459
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
    .line 454
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 455
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

    .line 879
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_9

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "days_num":I
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v6, :cond_5

    .line 882
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 891
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 892
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_8

    .line 893
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 894
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 895
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 899
    :cond_2
    :goto_1
    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 900
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 903
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 954
    :cond_4
    return-void

    .line 884
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v2, v3, :cond_6

    .line 885
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v2, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto :goto_0

    .line 886
    :cond_6
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v3, :cond_7

    .line 887
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 888
    :cond_7
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v3, :cond_1

    .line 889
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 896
    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 897
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x10405e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    .end local v0    # "days_num":I
    :cond_9
    const/4 v0, 0x0

    .line 908
    .restart local v0    # "days_num":I
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    .line 909
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    .line 911
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

    .line 913
    :cond_b
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 914
    const/16 v0, 0x1f

    .line 915
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v7, :cond_d

    :goto_2
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 916
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 944
    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 945
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 947
    :cond_c
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v2, :cond_14

    .line 948
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 949
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 915
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_2

    .line 919
    :cond_e
    const/4 v5, 0x2

    if-ne p2, v5, :cond_12

    .line 920
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 922
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 923
    const/16 v0, 0x1d

    .line 924
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v4, :cond_f

    move v2, v3

    :goto_5
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 925
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 924
    :cond_f
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_5

    .line 929
    :cond_10
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 930
    const/16 v0, 0x1c

    .line 931
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v3, :cond_11

    const/16 v2, 0x1b

    :goto_6
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 932
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 931
    :cond_11
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_6

    .line 937
    :cond_12
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 938
    const/16 v0, 0x1e

    .line 939
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v2, :cond_13

    move v2, v4

    :goto_7
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 940
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 939
    :cond_13
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_7

    .line 951
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v0, :cond_4

    .line 952
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private modifyInitDayView(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "days_num":I
    add-int/lit8 v1, p2, 0x1

    .line 959
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

    .line 960
    :cond_0
    const/16 v0, 0x1f

    .line 970
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 971
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v3, :cond_4

    .line 972
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 973
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 961
    .end local v2    # "j":I
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 962
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 963
    const/16 v0, 0x1d

    goto :goto_0

    .line 965
    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 968
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    .line 976
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 977
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 980
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

    .line 981
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 982
    return-void

    .line 980
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
    .line 856
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 858
    :cond_0
    if-eqz p2, :cond_1

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 860
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .line 151
    return-void
.end method

.method public getDay()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 99
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
    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsLunar()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method public getIsTimed()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method public getMonth()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 95
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
    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYear()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 91
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
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 12

    .prologue
    .line 468
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

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    .line 471
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    .line 472
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    .line 473
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    .line 475
    .local v3, "isSameDate":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    .line 476
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    .line 477
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    .line 478
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_2

    .line 479
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    sput v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 482
    :cond_2
    sget v2, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .local v2, "i":I
    :goto_1
    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v2, v8, :cond_4

    .line 483
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_3

    .line 484
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v11, 0x10405e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 489
    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v8, :cond_5

    .line 490
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_5
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-nez v8, :cond_15

    .line 495
    if-eqz v3, :cond_6

    .line 496
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 497
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 498
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 504
    :goto_3
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 505
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_a

    .line 506
    if-eqz v3, :cond_7

    .line 507
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 525
    :goto_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_c

    .line 526
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_b

    .line 527
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_5
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    .line 528
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 500
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 501
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 502
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 509
    :cond_7
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_9

    .line 510
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 511
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-nez v8, :cond_8

    .line 512
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 514
    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 516
    :cond_9
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 517
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 521
    :cond_a
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 522
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 530
    :cond_b
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_6
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    .line 531
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 534
    :cond_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 535
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 538
    :cond_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v7, v8, v9

    .line 539
    .local v7, "year":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    add-int/lit8 v4, v8, 0x1

    .line 540
    .local v4, "month":I
    const/4 v1, 0x0

    .line 541
    .local v1, "days_num":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_f

    .line 542
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 543
    const/16 v1, 0x1d

    .line 551
    :goto_7
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_13

    .line 552
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_12

    .line 553
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_8
    if-ge v2, v1, :cond_1e

    .line 554
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 545
    :cond_e
    const/16 v1, 0x1c

    goto :goto_7

    .line 546
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

    .line 547
    :cond_10
    const/16 v1, 0x1f

    goto :goto_7

    .line 549
    :cond_11
    const/16 v1, 0x1e

    goto :goto_7

    .line 556
    :cond_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_9
    if-ge v2, v1, :cond_1e

    .line 557
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 560
    :cond_13
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_14

    .line 561
    const/4 v2, 0x1

    :goto_a
    if-gt v2, v1, :cond_1e

    .line 562
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 564
    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1e

    .line 565
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 572
    .end local v1    # "days_num":I
    .end local v4    # "month":I
    .end local v7    # "year":I
    :cond_15
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 575
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    .line 580
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 581
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-lt v8, v9, :cond_16

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v8, v9, :cond_18

    .line 582
    :cond_16
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 583
    const/4 v8, 0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 590
    :goto_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 591
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeapMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 592
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 593
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 594
    :cond_17
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_1a

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-gt v8, v9, :cond_1a

    .line 595
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x10405e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 596
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

    .line 597
    .local v6, "str":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v8, :cond_19

    .line 598
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 585
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_18
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 586
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 587
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmDay()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_c

    .line 599
    .restart local v5    # "run":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_19
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_e
    const/16 v8, 0xc

    if-ge v2, v8, :cond_1b

    .line 601
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 604
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 606
    :cond_1b
    const/4 v0, 0x0

    .line 607
    .local v0, "dayofMonth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v8, v9, :cond_21

    .line 608
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

    .line 612
    :goto_10
    const/16 v8, 0x1e

    if-ne v8, v0, :cond_22

    .line 613
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070067

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    .line 616
    :cond_1c
    :goto_11
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 617
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

    .line 618
    :cond_1d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 622
    .end local v0    # "dayofMonth":I
    :cond_1e
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 623
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 624
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 625
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v8, :cond_1f

    .line 626
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 627
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 628
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 630
    :cond_1f
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 631
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 632
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 633
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_25

    .line 634
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 635
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_23

    .line 636
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 639
    :goto_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_24

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_24

    .line 640
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 648
    :goto_13
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 649
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 650
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 608
    .restart local v0    # "dayofMonth":I
    :cond_20
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    goto/16 :goto_f

    .line 610
    :cond_21
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v9}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_10

    .line 614
    :cond_22
    const/16 v8, 0x1d

    if-ne v8, v0, :cond_1c

    .line 615
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070066

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    goto/16 :goto_11

    .line 638
    .end local v0    # "dayofMonth":I
    :cond_23
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_12

    .line 642
    :cond_24
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13

    .line 644
    :cond_25
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 645
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 646
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

    .line 463
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

    .line 779
    const/4 v0, 0x0

    .local v0, "day":I
    move v2, v0

    .local v2, "month":I
    move v4, v0

    .line 780
    .local v4, "year":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v8, :cond_4

    .line 781
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 782
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 783
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 808
    :goto_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    if-eqz v6, :cond_f

    .line 809
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 810
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 812
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 813
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 815
    :cond_2
    const/4 v5, 0x0

    .line 816
    .local v5, "yearsize":I
    const/16 v6, 0x76c

    if-gt v4, v6, :cond_e

    .line 817
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 821
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

    .line 832
    .end local v5    # "yearsize":I
    :cond_3
    :goto_2
    return-void

    .line 785
    :cond_4
    const/4 v1, 0x0

    .line 786
    .local v1, "isLeapMonth":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 787
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v8, v9, :cond_5

    .line 788
    const/4 v1, 0x1

    .line 789
    :cond_5
    const/4 v8, 0x3

    new-array v3, v8, [I

    .line 790
    .local v3, "solarInfo":[I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_b

    .line 791
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v8, v9, :cond_8

    .line 792
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

    .line 803
    :goto_5
    const/4 v6, 0x0

    aget v4, v3, v6

    .line 804
    aget v6, v3, v10

    add-int/lit8 v2, v6, -0x1

    .line 805
    const/4 v6, 0x2

    aget v0, v3, v6

    goto/16 :goto_0

    .line 792
    :cond_6
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 795
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

    .line 799
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

    .line 819
    .end local v1    # "isLeapMonth":Z
    .end local v3    # "solarInfo":[I
    .restart local v5    # "yearsize":I
    :cond_e
    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, v4, v6

    goto/16 :goto_1

    .line 826
    .end local v5    # "yearsize":I
    :cond_f
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    if-eqz v6, :cond_3

    .line 827
    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v4, v6, :cond_10

    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v6, :cond_10

    .line 828
    const/16 v4, 0x76c

    .line 830
    :cond_10
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    invoke-interface {v6, p0, v4, v2, v0}, Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V

    goto/16 :goto_2
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;Z)V

    .line 155
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 159
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;ZZ)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z

    .prologue
    .line 179
    if-eqz p3, :cond_3

    .line 180
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .line 181
    .local v0, "isSameDate":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eq p3, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 192
    .end local v0    # "isSameDate":Z
    :cond_1
    :goto_0
    return-void

    .line 183
    .restart local v0    # "isSameDate":Z
    :cond_2
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 189
    .end local v0    # "isSameDate":Z
    :goto_1
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 190
    iput-boolean p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 191
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    goto :goto_0

    .line 186
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
    .line 172
    iput-boolean p4, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 174
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 875
    :cond_2
    return-void
.end method

.method public setCenterTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 106
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    .line 208
    return-void
.end method

.method public setDrawMask(Z)V
    .locals 1
    .param p1, "isDraw"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 125
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 126
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 127
    return-void
.end method

.method public setIsTimed(Z)V
    .locals 1
    .param p1, "istimed"    # Z

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 199
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    goto :goto_0
.end method

.method public setItemTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 111
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 112
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 80
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    .line 81
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 82
    return-void
.end method

.method public setMinYear(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 75
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 76
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 77
    return-void
.end method

.method public setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .line 842
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setVisibleItems(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "height"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 119
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 120
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    .line 121
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 731
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "b"    # Z

    .prologue
    .line 665
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 666
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 667
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 668
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 670
    :cond_0
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt p1, v5, :cond_2

    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge p1, v5, :cond_1

    const/16 v5, 0x76c

    if-ne p1, v5, :cond_2

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

    .line 727
    :cond_2
    :goto_0
    return-void

    .line 675
    :cond_3
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_b

    .line 676
    invoke-static {p1, p2, p3}, Lcom/letv/leui/widget/picker/LunarCalendar;->solarToLunar(III)[I

    move-result-object v2

    .line 677
    .local v2, "lunarInfo":[I
    const/4 v5, 0x0

    aget p1, v2, v5

    .line 678
    const/4 v5, 0x1

    aget p2, v2, v5

    .line 679
    const/4 v5, 0x2

    aget p3, v2, v5

    .line 680
    const/4 v5, 0x4

    aget v5, v2, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    aget v5, v2, v5

    if-ge p2, v5, :cond_5

    const/4 v5, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_5

    .line 681
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 683
    :cond_5
    if-eqz p4, :cond_7

    .line 684
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v5, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v1

    .line 685
    .local v1, "leapMonth":I
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v5, v1, :cond_7

    .line 686
    iput v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 687
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v6, 0xc

    if-le v5, v6, :cond_8

    .line 688
    :cond_6
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_7

    .line 689
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 705
    .end local v1    # "leapMonth":I
    :cond_7
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 706
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 707
    add-int/lit8 p2, p2, 0x1

    .line 712
    .end local v2    # "lunarInfo":[I
    :goto_1
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 713
    iput p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 714
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v5, :cond_c

    const/16 v5, 0x76c

    if-ne p1, v5, :cond_c

    .line 715
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 719
    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 720
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->getDayIndex(III)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 723
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 725
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    goto/16 :goto_0

    .line 692
    .restart local v1    # "leapMonth":I
    .restart local v2    # "lunarInfo":[I
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 693
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 694
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v6, 0x10405e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 695
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

    .line 696
    .local v4, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v0, v5, :cond_a

    .line 697
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 698
    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_4
    const/16 v5, 0xc

    if-ge v0, v5, :cond_7

    .line 700
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 709
    .end local v0    # "i":I
    .end local v1    # "leapMonth":I
    .end local v2    # "lunarInfo":[I
    .end local v3    # "run":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 710
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto/16 :goto_1

    .line 717
    :cond_c
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    goto/16 :goto_2
.end method
