.class public Lcom/letv/leui/widget/LeNewDatePickerDialog;
.super Landroid/app/Dialog;
.source "LeNewDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private day:Ljava/lang/String;

.field private default_year:Ljava/lang/String;

.field private density:F

.field private isChinese:Z

.field private isLunar:Z

.field private mContext:Landroid/content/Context;

.field private mDateSetListener:Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;

.field private mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSwitch:Lcom/letv/leui/widget/LeSwitch;

.field private month:Ljava/lang/String;

.field private scaledDensity:F

.field private timeStr:Ljava/lang/String;

.field private timeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private year:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLunar"    # Z
    .param p3, "callBack"    # Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x1

    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeNewDatePickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;

    iput-boolean p2, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->isLunar:Z

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->setDrawMask(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZZ)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p4, p5, p6, p2}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    return-void
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->scaledDensity:F

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x1020462

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x1020463

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x102045f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mLayout:Landroid/widget/RelativeLayout;

    const v1, 0x1020461

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/DateWheel;

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCyclic(Z)V

    const/16 v1, 0x76e

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->setMinYear(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040713

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeStr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1900"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->default_year:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->isChinese:Z

    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->isLunar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V

    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const v2, -0xdc6a12

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    const v1, 0x102045e

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    const v1, 0x1020460

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeSwitch;

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mSwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/LeSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/high16 v2, 0x41980000    # 19.0f

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->dip2sp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setItemTextSize(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->dip2sp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterTextSize(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v2, 0x3

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->dip2sp(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/DateWheel;->setVisibleItems(II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->titleTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDateWheel()Lcom/letv/leui/widget/picker/DateWheel;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean p2, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->isLunar:Z

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4, v5}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZZ)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->updateDate(III)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    const-string v2, "1900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v5}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZZ)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarStrToSolar(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .local v0, "solar":[I
    aget v1, v0, v4

    aget v2, v0, v5

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->updateDate(III)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/LeNewDatePickerDialog$OnDateChangedListener;->onDateSet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeNewDatePickerDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1020462
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateChange(Lcom/letv/leui/widget/picker/DateWheel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "day"    # Ljava/lang/String;

    .prologue
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->default_year:Ljava/lang/String;

    iput-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    iput-object p4, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V
    .locals 9
    .param p1, "view"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->year:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->month:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->day:Ljava/lang/String;

    const/16 v1, 0x76c

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    return-void
.end method

.method public setMaxYear(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMaxYear(I)V

    return-void
.end method

.method public setMinYear(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMinYear(I)V

    return-void
.end method

.method public setSelectLayoutShow(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeNewDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    return-void
.end method
