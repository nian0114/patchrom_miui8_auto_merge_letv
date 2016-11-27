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

    .line 129
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

    .line 130
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 134
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

    .line 135
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
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

    .line 140
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 141
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

.method private getDayIndex(III)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x0

    .line 729
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v1, :cond_3

    .line 734
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 737
    :cond_2
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 741
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

    .line 743
    :cond_4
    const/16 v1, 0x1f

    if-gt p3, v1, :cond_0

    .line 744
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 747
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 748
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 750
    const/16 v1, 0x1d

    if-gt p3, v1, :cond_0

    .line 751
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 754
    :cond_6
    const/16 v1, 0x1c

    if-gt p3, v1, :cond_0

    .line 755
    add-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 759
    :cond_7
    const/16 v1, 0x1e

    if-gt p3, v1, :cond_0

    .line 760
    add-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method private initAction()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 424
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 439
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/4 v5, 0x1

    const/4 v6, 0x5

    .line 210
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 211
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900a4

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    .line 213
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 216
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "language":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 223
    :goto_0
    const v3, 0x1020423

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    .line 224
    const v3, 0x1020429

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    .line 225
    const v3, 0x1020421

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    .line 226
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    .line 229
    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v7, :cond_1

    .line 231
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    goto :goto_0

    .line 232
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 233
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initAction()V

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 235
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 236
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 237
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 447
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
    .line 442
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 443
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

    .line 868
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_9

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, "days_num":I
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v6, :cond_5

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 880
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 881
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_8

    .line 882
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 883
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 884
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 888
    :cond_2
    :goto_1
    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 889
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v2, :cond_3

    .line 890
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 892
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 943
    :cond_4
    return-void

    .line 873
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v2, v3, :cond_6

    .line 874
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v2, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto :goto_0

    .line 875
    :cond_6
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v3, :cond_7

    .line 876
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 877
    :cond_7
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v3, :cond_1

    .line 878
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 885
    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 886
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x10405e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 896
    .end local v0    # "days_num":I
    :cond_9
    const/4 v0, 0x0

    .line 897
    .restart local v0    # "days_num":I
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    .line 898
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    .line 900
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

    .line 902
    :cond_b
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 903
    const/16 v0, 0x1f

    .line 904
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v7, :cond_d

    :goto_2
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 905
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 933
    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    .line 934
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 936
    :cond_c
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v2, :cond_14

    .line 937
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 938
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 904
    .end local v1    # "i":I
    :cond_d
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_2

    .line 908
    :cond_e
    const/4 v5, 0x2

    if-ne p2, v5, :cond_12

    .line 909
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 911
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 912
    const/16 v0, 0x1d

    .line 913
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v4, :cond_f

    move v2, v3

    :goto_5
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 914
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 913
    :cond_f
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_5

    .line 918
    :cond_10
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 919
    const/16 v0, 0x1c

    .line 920
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v3, :cond_11

    const/16 v2, 0x1b

    :goto_6
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 921
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 920
    :cond_11
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_6

    .line 926
    :cond_12
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 927
    const/16 v0, 0x1e

    .line 928
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v2, :cond_13

    move v2, v4

    :goto_7
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 929
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 928
    :cond_13
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_7

    .line 940
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v0, :cond_4

    .line 941
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private modifyInitDayView(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, "days_num":I
    add-int/lit8 v1, p2, 0x1

    .line 948
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

    .line 949
    :cond_0
    const/16 v0, 0x1f

    .line 959
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 960
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v3, :cond_4

    .line 961
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 962
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 950
    .end local v2    # "j":I
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 951
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    const/16 v0, 0x1d

    goto :goto_0

    .line 954
    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 957
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    .line 965
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 966
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 969
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

    .line 970
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 971
    return-void

    .line 969
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
    .line 845
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 847
    :cond_0
    if-eqz p2, :cond_1

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 849
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .line 150
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
    .line 854
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method public getIsTimed()Z
    .locals 1

    .prologue
    .line 202
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
    .line 456
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

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    .line 459
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    .line 460
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    .line 461
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    .line 463
    .local v3, "isSameDate":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    .line 464
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    .line 465
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    .line 467
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_2

    .line 468
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    sput v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 471
    :cond_2
    sget v2, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .local v2, "i":I
    :goto_1
    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v2, v8, :cond_4

    .line 472
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_3

    .line 473
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

    .line 471
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 475
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 478
    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v8, :cond_5

    .line 479
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_5
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-nez v8, :cond_15

    .line 484
    if-eqz v3, :cond_6

    .line 485
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 486
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 487
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 493
    :goto_3
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 494
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_a

    .line 495
    if-eqz v3, :cond_7

    .line 496
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 514
    :goto_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_c

    .line 515
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_b

    .line 516
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_5
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    .line 517
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 489
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 490
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 491
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_3

    .line 498
    :cond_7
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_9

    .line 499
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 500
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-nez v8, :cond_8

    .line 501
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 503
    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 505
    :cond_9
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 506
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 510
    :cond_a
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 511
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 519
    :cond_b
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_6
    const/16 v8, 0xc

    if-ge v2, v8, :cond_d

    .line 520
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 523
    :cond_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 524
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 527
    :cond_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v7, v8, v9

    .line 528
    .local v7, "year":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    add-int/lit8 v4, v8, 0x1

    .line 529
    .local v4, "month":I
    const/4 v1, 0x0

    .line 530
    .local v1, "days_num":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_f

    .line 531
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 532
    const/16 v1, 0x1d

    .line 540
    :goto_7
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_13

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_13

    .line 541
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_12

    .line 542
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_8
    if-ge v2, v1, :cond_1e

    .line 543
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 534
    :cond_e
    const/16 v1, 0x1c

    goto :goto_7

    .line 535
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

    .line 536
    :cond_10
    const/16 v1, 0x1f

    goto :goto_7

    .line 538
    :cond_11
    const/16 v1, 0x1e

    goto :goto_7

    .line 545
    :cond_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_9
    if-ge v2, v1, :cond_1e

    .line 546
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 549
    :cond_13
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_14

    .line 550
    const/4 v2, 0x1

    :goto_a
    if-gt v2, v1, :cond_1e

    .line 551
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 553
    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1e

    .line 554
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 561
    .end local v1    # "days_num":I
    .end local v4    # "month":I
    .end local v7    # "year":I
    :cond_15
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 564
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    .line 569
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 570
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-lt v8, v9, :cond_16

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v8, v9, :cond_18

    .line 571
    :cond_16
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 572
    const/4 v8, 0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 579
    :goto_c
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 580
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeapMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 581
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 582
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 583
    :cond_17
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_1a

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-gt v8, v9, :cond_1a

    .line 584
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x10405e2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 585
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

    .line 586
    .local v6, "str":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v8, :cond_19

    .line 587
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 574
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_18
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 575
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 576
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmDay()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_c

    .line 588
    .restart local v5    # "run":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_19
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_e
    const/16 v8, 0xc

    if-ge v2, v8, :cond_1b

    .line 590
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 593
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_1a
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 595
    :cond_1b
    const/4 v0, 0x0

    .line 596
    .local v0, "dayofMonth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v8, v9, :cond_21

    .line 597
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

    .line 601
    :goto_10
    const/16 v8, 0x1e

    if-ne v8, v0, :cond_22

    .line 602
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    .line 605
    :cond_1c
    :goto_11
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 606
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

    .line 607
    :cond_1d
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 611
    .end local v0    # "dayofMonth":I
    :cond_1e
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 612
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 613
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 614
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    if-eqz v8, :cond_1f

    .line 615
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 616
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 617
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 619
    :cond_1f
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 620
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 621
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 622
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_25

    .line 623
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 624
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_23

    .line 625
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 628
    :goto_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_24

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_24

    .line 629
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 637
    :goto_13
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 638
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 639
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 597
    .restart local v0    # "dayofMonth":I
    :cond_20
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    goto/16 :goto_f

    .line 599
    :cond_21
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v9}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_10

    .line 603
    :cond_22
    const/16 v8, 0x1d

    if-ne v8, v0, :cond_1c

    .line 604
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070064

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    goto/16 :goto_11

    .line 627
    .end local v0    # "dayofMonth":I
    :cond_23
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_12

    .line 631
    :cond_24
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13

    .line 633
    :cond_25
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 634
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 635
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

    .line 451
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

    .line 768
    const/4 v0, 0x0

    .local v0, "day":I
    move v2, v0

    .local v2, "month":I
    move v4, v0

    .line 769
    .local v4, "year":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v8, :cond_4

    .line 770
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 771
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 772
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 797
    :goto_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    if-eqz v6, :cond_f

    .line 798
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 799
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 801
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 802
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 804
    :cond_2
    const/4 v5, 0x0

    .line 805
    .local v5, "yearsize":I
    const/16 v6, 0x76c

    if-gt v4, v6, :cond_e

    .line 806
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 810
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

    .line 821
    .end local v5    # "yearsize":I
    :cond_3
    :goto_2
    return-void

    .line 774
    :cond_4
    const/4 v1, 0x0

    .line 775
    .local v1, "isLeapMonth":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 776
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v8, v9, :cond_5

    .line 777
    const/4 v1, 0x1

    .line 778
    :cond_5
    const/4 v8, 0x3

    new-array v3, v8, [I

    .line 779
    .local v3, "solarInfo":[I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v8, v10, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v6, :cond_b

    .line 780
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v8, v9, :cond_8

    .line 781
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

    .line 792
    :goto_5
    const/4 v6, 0x0

    aget v4, v3, v6

    .line 793
    aget v6, v3, v10

    add-int/lit8 v2, v6, -0x1

    .line 794
    const/4 v6, 0x2

    aget v0, v3, v6

    goto/16 :goto_0

    .line 781
    :cond_6
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 784
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

    .line 788
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

    .line 808
    .end local v1    # "isLeapMonth":Z
    .end local v3    # "solarInfo":[I
    .restart local v5    # "yearsize":I
    :cond_e
    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, v4, v6

    goto/16 :goto_1

    .line 815
    .end local v5    # "yearsize":I
    :cond_f
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    if-eqz v6, :cond_3

    .line 816
    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v4, v6, :cond_10

    iget-boolean v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v6, :cond_10

    .line 817
    const/16 v4, 0x76c

    .line 819
    :cond_10
    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    invoke-interface {v6, p0, v4, v2, v0}, Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V

    goto/16 :goto_2
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;Z)V

    .line 154
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 158
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;ZZ)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z

    .prologue
    .line 178
    if-eqz p3, :cond_3

    .line 179
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .line 180
    .local v0, "isSameDate":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eq p3, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 191
    .end local v0    # "isSameDate":Z
    :cond_1
    :goto_0
    return-void

    .line 182
    .restart local v0    # "isSameDate":Z
    :cond_2
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 188
    .end local v0    # "isSameDate":Z
    :goto_1
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 189
    iput-boolean p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    goto :goto_0

    .line 185
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
    .line 171
    iput-boolean p4, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 173
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 864
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
    .line 206
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    .line 207
    return-void
.end method

.method public setDrawMask(Z)V
    .locals 1
    .param p1, "isDraw"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 124
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 125
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 126
    return-void
.end method

.method public setIsTimed(Z)V
    .locals 1
    .param p1, "istimed"    # Z

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 198
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
    .line 830
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .line 831
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
    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 119
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I

    .line 120
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 720
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "b"    # Z

    .prologue
    .line 654
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 655
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 656
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 657
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 659
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

    .line 716
    :cond_2
    :goto_0
    return-void

    .line 664
    :cond_3
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_b

    .line 665
    invoke-static {p1, p2, p3}, Lcom/letv/leui/widget/picker/LunarCalendar;->solarToLunar(III)[I

    move-result-object v2

    .line 666
    .local v2, "lunarInfo":[I
    const/4 v5, 0x0

    aget p1, v2, v5

    .line 667
    const/4 v5, 0x1

    aget p2, v2, v5

    .line 668
    const/4 v5, 0x2

    aget p3, v2, v5

    .line 669
    const/4 v5, 0x4

    aget v5, v2, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    aget v5, v2, v5

    if-ge p2, v5, :cond_5

    const/4 v5, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_5

    .line 670
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 672
    :cond_5
    if-eqz p4, :cond_7

    .line 673
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v5, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v1

    .line 674
    .local v1, "leapMonth":I
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v5, v1, :cond_7

    .line 675
    iput v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 676
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v6, 0xc

    if-le v5, v6, :cond_8

    .line 677
    :cond_6
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_7

    .line 678
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 694
    .end local v1    # "leapMonth":I
    :cond_7
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 695
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 696
    add-int/lit8 p2, p2, 0x1

    .line 701
    .end local v2    # "lunarInfo":[I
    :goto_1
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 702
    iput p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 703
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isCyclic:Z

    if-nez v5, :cond_c

    const/16 v5, 0x76c

    if-ne p1, v5, :cond_c

    .line 704
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 708
    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 709
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 710
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    .line 711
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->getDayIndex(III)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 712
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 714
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    goto/16 :goto_0

    .line 681
    .restart local v1    # "leapMonth":I
    .restart local v2    # "lunarInfo":[I
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 682
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 683
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v6, 0x10405e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 684
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

    .line 685
    .local v4, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v0, v5, :cond_a

    .line 686
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 687
    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_4
    const/16 v5, 0xc

    if-ge v0, v5, :cond_7

    .line 689
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 698
    .end local v0    # "i":I
    .end local v1    # "leapMonth":I
    .end local v2    # "lunarInfo":[I
    .end local v3    # "run":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 699
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto/16 :goto_1

    .line 706
    :cond_c
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    goto/16 :goto_2
.end method
