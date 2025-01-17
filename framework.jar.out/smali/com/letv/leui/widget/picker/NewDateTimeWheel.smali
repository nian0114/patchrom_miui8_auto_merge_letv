.class public Lcom/letv/leui/widget/picker/NewDateTimeWheel;
.super Landroid/widget/RelativeLayout;
.source "NewDateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;,
        Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;
    }
.end annotation


# instance fields
.field private am:Ljava/lang/String;

.field private amWheel:Lcom/letv/leui/widget/picker/WheelView;

.field private apmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/lang/String;

.field private dayAdapter:Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;

.field private density:F

.field private hourWheel:Lcom/letv/leui/widget/picker/WheelView;

.field private isLunar:Z

.field private isZh:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private minWheel:Lcom/letv/leui/widget/picker/WheelView;

.field private monthWheel:Lcom/letv/leui/widget/picker/WheelView;

.field private onDateChangedListener:Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;

.field private pm:Ljava/lang/String;

.field private scaledDensity:F

.field private timeFormat:Ljava/lang/String;

.field private today:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->changeDate()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh:Z

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->today:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isLunar:Z

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    return-object p1
.end method

.method private changeDate()V
    .locals 12

    .prologue
    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .local v0, "copyCalendar":Ljava/util/Calendar;
    const/4 v7, 0x6

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    const-string v1, ""

    .local v1, "date":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isLunar:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    const-string v6, ""

    .local v6, "week":Ljava/lang/String;
    move-object v2, v6

    .local v2, "day":Ljava/lang/String;
    move-object v4, v6

    .local v4, "month":Ljava/lang/String;
    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/pim/lunar/Lunar;->getMonth()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/pim/lunar/Lunar;->getDay()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    const-string v8, "E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "E"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .local v5, "w":Ljava/lang/String;
    move-object v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v2    # "day":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/DateFormat;
    .end local v4    # "month":Ljava/lang/String;
    .end local v5    # "w":Ljava/lang/String;
    .end local v6    # "week":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->onDateChangedListener:Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->onDateChangedListener:Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v10}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v1, v7, v9, v10}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;->onDateChangedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh:Z

    if-eqz v7, :cond_5

    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v3    # "format":Ljava/text/DateFormat;
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v3    # "format":Ljava/text/DateFormat;
    :cond_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v3    # "format":Ljava/text/DateFormat;
    goto :goto_1
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initData()V
    .locals 8

    .prologue
    const/high16 v7, 0x42dc0000    # 110.0f

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh:Z

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    const-string v4, "\u4e0a\u5348"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    const-string v4, "\u4e0b\u5348"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dayAdapter:Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dayAdapter:Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;

    invoke-direct {p0, v7}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->setTextViewHeight(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dayAdapter:Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    new-instance v0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .local v0, "apmAdaper":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v0}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/16 v5, 0xc

    const-string v6, "%02d"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->setTextViewHeight(I)V

    new-instance v2, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const-string v6, "%02d"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v2, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->setTextViewHeight(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->changeDate()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/NewDateTimeWheel$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/NewDateTimeWheel$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/NewDateTimeWheel$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/NewDateTimeWheel$4;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$4;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->density:F

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->scaledDensity:F

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040752

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->timeFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040754

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->today:Ljava/lang/String;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040753

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040750

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->am:Ljava/lang/String;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040751

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->pm:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x10900a2

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x102041a

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    const v1, 0x102041b

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    const v1, 0x102041c

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    const v1, 0x102041e

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->apmList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->setWheelStyle()V

    return-void
.end method

.method private isZh(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private setWheelStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const v1, -0xdc6a12

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v2, 0x41980000    # 19.0f

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->monthWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->amWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->hourWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->minWheel:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dip2sp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    return-void
.end method


# virtual methods
.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initData()V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initListener()V

    return-void
.end method

.method public setLunar(Z)V
    .locals 0
    .param p1, "isLunar"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isLunar:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initData()V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "changedListener"    # Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->onDateChangedListener:Lcom/letv/leui/widget/picker/NewDateTimeWheel$OnDateChangedListener;

    return-void
.end method
