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

.field private density:F

.field private hours:Lcom/letv/leui/widget/picker/WheelView;

.field private index_am_pm:I

.field private index_hour:I

.field private index_min:I

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mins:Lcom/letv/leui/widget/picker/WheelView;

.field private scaledDensity:F

.field private timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/TimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
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

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    .line 46
    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 48
    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_min:I

    .line 49
    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_hour:I

    .line 50
    iput v7, p0, Lcom/letv/leui/widget/picker/TimeWheel;->index_am_pm:I

    .line 64
    const-string v5, "test"

    const-string v8, "TimeWheel..."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/picker/TimeWheel;->setOrientation(I)V

    .line 66
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 67
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900ef

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    .line 69
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->density:F

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->scaledDensity:F

    .line 73
    const v5, 0x102042f

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    .line 74
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/16 v5, 0x17

    const-string v8, "%02d"

    invoke-direct {v1, p1, v7, v5, v8}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 75
    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 76
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 78
    const v5, 0x1020431

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    .line 79
    new-instance v4, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/16 v5, 0x3b

    const-string v8, "%02d"

    invoke-direct {v4, p1, v7, v5, v8}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 80
    .local v4, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 81
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "language":Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 92
    :goto_0
    const v5, 0x102042e

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    .line 93
    new-instance v0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    invoke-direct {v0, p1, v5}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 94
    .local v0, "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 96
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/16 v8, 0x64

    iput v8, v5, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    .line 99
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 100
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 101
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 103
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 104
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    .line 105
    const/high16 v5, 0x41900000    # 18.0f

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->dip2sp(F)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->setItemTextSize(I)V

    .line 106
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->dip2sp(F)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/TimeWheel;->setCenterTextSize(I)V

    .line 107
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    .line 108
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateHourControl()V

    .line 110
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$1;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 122
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$2;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 134
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/TimeWheel$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/TimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/TimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 146
    return-void

    .line 88
    .end local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string v8, "AM"

    aput-object v8, v5, v7

    .line 90
    iget-object v5, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string v8, "PM"

    aput-object v8, v5, v6

    goto/16 :goto_0

    .restart local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_1
    move v5, v7

    .line 104
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/TimeWheel;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/TimeWheel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/TimeWheel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/TimeWheel;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    return p1
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 152
    iget v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 5
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 243
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 246
    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    .line 247
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 253
    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 256
    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    goto :goto_0

    .line 250
    :cond_3
    iput-boolean v4, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    .line 251
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 268
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 276
    .local v0, "index":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 278
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x17

    const-string v4, "%02d"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 287
    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 292
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 293
    return-void

    .line 289
    .end local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_0
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xb

    const-string v4, "%02d"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 290
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
    .line 185
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    .line 186
    return-void
.end method

.method public getAmPmWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    .line 203
    .local v0, "currentHour":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 205
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 206
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 208
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
    .line 216
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
    .line 168
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMinsWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onUpdateTime()V
    .locals 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 297
    .local v0, "hourOfDay":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 298
    .local v1, "minute":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/letv/leui/widget/picker/TimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;->onTimeChanged(Lcom/letv/leui/widget/picker/TimeWheel;II)V

    .line 302
    :cond_0
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->calendar:Ljava/util/Calendar;

    .line 306
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 307
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 308
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    .line 309
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    .line 310
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 327
    :cond_2
    return-void
.end method

.method public setCenterTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 157
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 159
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 231
    return-void
.end method

.method public setCurrentMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMin"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 263
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 264
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    .line 265
    return-void
.end method

.method public setIs24Hours(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 193
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateHourControl()V

    .line 194
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->updateAmPmControl()V

    .line 195
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    goto :goto_0
.end method

.method public setItemTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 165
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 315
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/TimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 318
    :cond_0
    return-void
.end method
