.class public Lcom/letv/leui/widget/picker/DateTimeWheel;
.super Landroid/widget/LinearLayout;
.source "DateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final MIN_YEAR:I = 0x7b2

.field private static density:F


# instance fields
.field private am_pm:Lcom/letv/leui/widget/picker/WheelView;

.field private calendar:Ljava/util/Calendar;

.field private curYear:I

.field private dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

.field private dateFormat:Ljava/lang/String;

.field private day:Lcom/letv/leui/widget/picker/WheelView;

.field private dayWrapper:Landroid/view/View;

.field private hours:Lcom/letv/leui/widget/picker/WheelView;

.field private hoursWrapper:Landroid/view/View;

.field private isLunar:Z

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mins:Lcom/letv/leui/widget/picker/WheelView;

.field private noYearWheel:Z

.field private scaledDensity:F

.field private timeseparator:Landroid/widget/TextView;

.field private vto:Landroid/view/ViewTreeObserver;

.field private year:Lcom/letv/leui/widget/picker/WheelView;

.field private yearIndex:I

.field private yearList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 51
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 56
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    .line 58
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    sput v11, Lcom/letv/leui/widget/picker/DateTimeWheel;->density:F

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->scaledDensity:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->scaledDensity:F

    .line 73
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setOrientation(I)V

    .line 74
    const-string v11, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 75
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x10900a3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 77
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 78
    if-eqz p2, :cond_0

    .line 79
    sget-object v11, Lcom/android/internal/R$styleable;->DateTimeWheel:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 80
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    .line 81
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    if-eqz v11, :cond_2

    .line 85
    const v11, 0x1020422

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 86
    .local v10, "yearWapper":Landroid/view/View;
    const v11, 0x1020420

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dayWrapper:Landroid/view/View;

    .line 87
    const v11, 0x1020424

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hoursWrapper:Landroid/view/View;

    .line 88
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .end local v10    # "yearWapper":Landroid/view/View;
    :goto_0
    const v11, 0x1020421

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    .line 111
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 112
    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 113
    .local v4, "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 115
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    if-eqz v11, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11}, Lcom/letv/leui/widget/picker/WheelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->vto:Landroid/view/ViewTreeObserver;

    .line 117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->vto:Landroid/view/ViewTreeObserver;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    :cond_1
    const v11, 0x1020427

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->timeseparator:Landroid/widget/TextView;

    .line 130
    const v11, 0x1020426

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    .line 131
    new-instance v5, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/4 v11, 0x0

    const/16 v12, 0x17

    const-string v13, "%02d"

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v11, v12, v13}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 132
    .local v5, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v5}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 135
    const v11, 0x1020428

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    .line 136
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const/4 v11, 0x0

    const/16 v12, 0x3b

    const-string v13, "%02d"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11, v12, v13}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 137
    .local v8, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "language":Ljava/lang/String;
    const-string v11, "en"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 143
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "AM"

    aput-object v13, v11, v12

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "PM"

    aput-object v13, v11, v12

    .line 149
    :goto_1
    const v11, 0x1020425

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    .line 150
    new-instance v3, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 151
    .local v3, "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/16 v12, 0x64

    iput v12, v11, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    .line 157
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 161
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 162
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 163
    const/high16 v11, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->dip2sp(F)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCenterTextSize(I)V

    .line 164
    const/high16 v11, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->dip2sp(F)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setItemTextSize(I)V

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateHourControl()V

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$4;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$5;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$6;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 208
    return-void

    .line 90
    .end local v3    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .end local v4    # "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    .end local v5    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->initYear()V

    .line 91
    const v11, 0x1020423

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    .line 92
    new-instance v9, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 93
    .local v9, "yearAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 94
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 96
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    goto/16 :goto_0

    .line 147
    .end local v9    # "yearAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .restart local v4    # "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    .restart local v5    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    .restart local v7    # "language":Ljava/lang/String;
    .restart local v8    # "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_3
    new-instance v11, Ljava/text/DateFormatSymbols;

    invoke-direct {v11}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v11}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    goto/16 :goto_1

    .line 162
    .restart local v3    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/DateTimeWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/DateTimeWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    return v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dayWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(F)I
    .locals 1
    .param p0, "x0"    # F

    .prologue
    .line 32
    invoke-static {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->dip2px(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hoursWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/picker/DateTimeWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/letv/leui/widget/picker/DateTimeWheel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    return p1
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 212
    sget v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 254
    sget v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initYear()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    .line 224
    iget v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    add-int/lit16 v1, v1, -0x7b2

    iput v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    .line 226
    const/16 v0, 0x7b2

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 348
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 4
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 362
    iput-boolean v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 363
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 364
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 369
    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 372
    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    goto :goto_0

    .line 366
    :cond_3
    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 367
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method private setCurrentMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMin"    # Ljava/lang/Integer;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 379
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 380
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 381
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 384
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 392
    .local v0, "index":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 394
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateHourControl(Z)V

    .line 415
    return-void
.end method

.method private updateHourControl(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 401
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x17

    const-string v5, "%02d"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 403
    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 408
    :goto_0
    if-eqz p1, :cond_0

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 411
    :cond_0
    return-void

    .line 405
    .end local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_1
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xc

    const-string v5, "%02d"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 406
    .restart local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    .line 294
    return-void
.end method

.method public getAmPmWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    .line 316
    .local v0, "currentHour":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getHoursWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getIsLunar()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    return v0
.end method

.method public getMinsWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYearWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onUpdateDate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xc

    .line 439
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 440
    .local v2, "year":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 441
    .local v3, "month":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 442
    .local v4, "day":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v5

    .line 443
    .local v5, "hourOfDay":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 444
    .local v6, "minute":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    add-int/lit8 v5, v5, 0x1

    .line 446
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v7

    .line 448
    .local v7, "index_apm":I
    if-nez v7, :cond_2

    if-ne v5, v8, :cond_2

    .line 449
    const/4 v5, 0x0

    .line 455
    .end local v7    # "index_apm":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateTimeWheel;IIIII)V

    .line 459
    :cond_1
    return-void

    .line 450
    .restart local v7    # "index_apm":I
    :cond_2
    if-ne v7, v9, :cond_0

    if-eq v5, v8, :cond_0

    .line 451
    add-int/lit8 v5, v5, 0xc

    goto :goto_0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCalendar(Ljava/util/Calendar;Z)V

    .line 463
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 5
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x0

    .line 466
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 467
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setFirstItemUnCyclic(I)V

    .line 468
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 469
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v0

    .line 472
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 473
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 474
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    .line 480
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 481
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    .line 482
    instance-of v1, v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_0

    .line 483
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->setIsLunar(Z)V

    .line 484
    :cond_0
    return-void

    .line 477
    .restart local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 531
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 534
    :cond_4
    return-void
.end method

.method public setCenterTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setLabelTextSize(I)V

    .line 270
    :cond_4
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateFormat:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v0

    .line 500
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    instance-of v1, v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_0

    .line 501
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIs24Hours(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    const/16 v1, 0xb

    .line 297
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateHourControl(Z)V

    .line 302
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 303
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setItemTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setItemTextSize(I)V

    .line 285
    :cond_4
    return-void
.end method

.method public setSeparator(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->timeseparator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 488
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 489
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 490
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 493
    :cond_0
    return-void
.end method
