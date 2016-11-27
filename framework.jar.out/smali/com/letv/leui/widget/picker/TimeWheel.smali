.class public Lcom/letv/leui/widget/picker/TimeWheel;
.super Landroid/widget/LinearLayout;
.source "TimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private am_pm:Lcom/letv/leui/widget/picker/WheelView;

.field private calendar:Ljava/util/Calendar;

.field private hours:Lcom/letv/leui/widget/picker/WheelView;

.field private index_am_pm:I

.field private index_hour:I

.field private index_min:I

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mins:Lcom/letv/leui/widget/picker/WheelView;

.field private timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/TimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_min:I

    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_hour:I

    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_am_pm:I

    const-string v5, "test"

    const-string v8, "TimeWheel..."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/picker/TimeWheel;->setOrientation(I)V

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900ec

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const v5, 0x1020426

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/16 v5, 0x17

    const-string v8, "%02d"

    invoke-direct {v1, p1, v7, v5, v8}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    const v5, 0x1020428

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v4, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/16 v5, 0x3b

    const-string v8, "%02d"

    invoke-direct {v4, p1, v7, v5, v8}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v4, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .local v3, "language":Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    :goto_0
    const v5, 0x1020425

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    invoke-direct {v0, p1, v5}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .local v0, "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/16 v8, 0x64

    iput v8, v5, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateHourControl()V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$1;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$2;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    return-void

    .end local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string v8, "AM"

    aput-object v8, v5, v7

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string v8, "PM"

    aput-object v8, v5, v6

    goto/16 :goto_0

    .restart local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_1
    move v5, v7

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/TimeWheel;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/TimeWheel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/TimeWheel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/TimeWheel;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    return p1
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 5
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "index":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x17

    const-string v4, "%02d"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    return-void

    .end local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_0
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xb

    const-string v4, "%02d"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .restart local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnTimeChangedListener(Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    return-void
.end method

.method public getAmPmWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    .local v0, "currentHour":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHoursWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMinsWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onUpdateTime()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .local v0, "hourOfDay":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "minute":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;->onTimeChanged(Lcom/letv/leui/widget/picker/TimeWheel;II)V

    :cond_0
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    :cond_2
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public setCurrentMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMin"    # Ljava/lang/Integer;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    return-void
.end method

.method public setIs24Hours(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateHourControl()V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    goto :goto_0
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    :cond_0
    return-void
.end method
