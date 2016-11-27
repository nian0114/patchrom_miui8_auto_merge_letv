.class public Lcom/letv/leui/widget/picker/NewTimeWheel;
.super Landroid/widget/LinearLayout;
.source "NewTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;
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

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mins:Lcom/letv/leui/widget/picker/WheelView;

.field private scaledDensity:F

.field private timeChangedListener:Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x3

    const/high16 v10, 0x42dc0000    # 110.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    .line 46
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 48
    iput v7, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->index_min:I

    .line 49
    iput v7, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->index_hour:I

    .line 50
    iput v7, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->index_am_pm:I

    .line 67
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 68
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900b9

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->density:F

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->scaledDensity:F

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 73
    const v5, 0x1020469

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    .line 74
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 75
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const-string v5, "%02d"

    invoke-direct {v1, p1, v6, v12, v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 76
    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    invoke-direct {p0, v10}, Lcom/letv/leui/widget/picker/NewTimeWheel;->dip2sp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->setTextViewHeight(I)V

    .line 77
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 78
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 79
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v11}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 80
    const v5, 0x102046a

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    .line 81
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 82
    new-instance v4, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/16 v5, 0x3b

    const-string v8, "%02d"

    invoke-direct {v4, p1, v7, v5, v8}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 83
    .local v4, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    invoke-direct {p0, v10}, Lcom/letv/leui/widget/picker/NewTimeWheel;->dip2sp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->setTextViewHeight(I)V

    .line 84
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 85
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 86
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v11}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "language":Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 97
    :goto_0
    const v5, 0x1020468

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    .line 98
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setDrawMask(Z)V

    .line 99
    new-instance v0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    invoke-direct {v0, p1, v5}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 100
    .local v0, "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-direct {p0, v10}, Lcom/letv/leui/widget/picker/NewTimeWheel;->dip2sp(F)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 101
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 103
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v5, v11}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 106
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 107
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 108
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 111
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z

    .line 113
    const/high16 v5, 0x41980000    # 19.0f

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->dip2sp(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setItemTextSize(I)V

    .line 114
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->dip2sp(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCenterTextSize(I)V

    .line 115
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->updateAmPmControl()V

    .line 116
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->updateHourControl()V

    .line 118
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/NewTimeWheel$1;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/NewTimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/NewTimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 130
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/NewTimeWheel$2;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/NewTimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/NewTimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 142
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v6, Lcom/letv/leui/widget/picker/NewTimeWheel$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/picker/NewTimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/NewTimeWheel;)V

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 154
    return-void

    .line 93
    .end local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 94
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040750

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 95
    iget-object v5, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040751

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    goto/16 :goto_0

    .restart local v0    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_1
    move v5, v7

    .line 111
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/NewTimeWheel;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewTimeWheel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/NewTimeWheel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/NewTimeWheel;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z

    return p1
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 169
    iget v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setCenterTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 159
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 160
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 5
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 251
    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z

    .line 252
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 258
    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->updateAmPmControl()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 261
    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->onUpdateTime()V

    goto :goto_0

    .line 255
    :cond_3
    iput-boolean v4, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z

    .line 256
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private setItemTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 165
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 166
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 281
    .local v0, "index":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 283
    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    .line 286
    :cond_0
    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    .local v0, "currentHour":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 298
    return-void
.end method


# virtual methods
.method public addOnTimeChangedListener(Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;

    .line 191
    return-void
.end method

.method public getAmPmWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    .line 208
    .local v0, "currentHour":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIs24HourView:Z

    if-eqz v1, :cond_0

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 210
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 211
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 213
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
    .line 221
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHoursWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMinsWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mIs24HourView:Z

    return v0
.end method

.method public onUpdateTime()V
    .locals 7

    .prologue
    .line 301
    iget-object v2, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 302
    .local v0, "hourOfDay":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 303
    .local v1, "minute":I
    iget-object v2, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->timeChangedListener:Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v4

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/NewTimeWheel$OnTimeChangedListener;->onTimeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->calendar:Ljava/util/Calendar;

    .line 311
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 312
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    .line 314
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->updateAmPmControl()V

    .line 315
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 332
    :cond_2
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 236
    return-void
.end method

.method public setCurrentMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMin"    # Ljava/lang/Integer;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 268
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->onUpdateTime()V

    .line 270
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 319
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 323
    :cond_0
    return-void
.end method
