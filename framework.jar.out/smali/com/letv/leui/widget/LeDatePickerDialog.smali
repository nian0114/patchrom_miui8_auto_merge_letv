.class public Lcom/letv/leui/widget/LeDatePickerDialog;
.super Landroid/app/Dialog;
.source "LeDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;,
        Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private day:I

.field private dayStr:Ljava/lang/String;

.field private default_year:Ljava/lang/String;

.field private density:F

.field private isChinese:Z

.field private mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

.field private mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

.field private mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

.field private month:I

.field private monthStr:Ljava/lang/String;

.field private scaledDensity:F

.field private timeStr:Ljava/lang/String;

.field private timeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private year:I

.field private yearStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;III)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 81
    const v1, 0x103051c

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 83
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    .line 84
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDatePickerDialog;->init(Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p3, p4, p5}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(III)V

    .line 86
    iput p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    .line 87
    add-int/lit8 v1, p4, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    .line 88
    iput p5, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    .line 89
    iget v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    iget v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-direct {p0, p3, v1, v2}, Lcom/letv/leui/widget/LeDatePickerDialog;->getDateText(III)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "dateText":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;IIIZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "b"    # Z

    .prologue
    const/4 v3, 0x1

    .line 95
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeDatePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 97
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    .line 98
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDatePickerDialog;->init(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, p6}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZZ)V

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p3, p4, p5, v3}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 102
    return-void
.end method

.method private dip2sp(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 231
    iget v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->density:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->scaledDensity:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDateText(III)Ljava/lang/String;
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/16 v6, 0x76c

    .line 279
    const/4 v3, 0x0

    .line 280
    .local v3, "pattern":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    if-eqz v5, :cond_1

    .line 281
    if-ne p1, v6, :cond_0

    .line 282
    const-string v3, "MM\u6708dd\u65e5"

    .line 295
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 297
    .local v0, "ca":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "datetext":Ljava/lang/String;
    return-object v2

    .line 284
    .end local v0    # "ca":Ljava/util/Calendar;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "datetext":Ljava/lang/String;
    :cond_0
    const-string v3, "yyyy\u5e74MM\u6708dd\u65e5"

    goto :goto_0

    .line 287
    :cond_1
    const/4 v4, 0x0

    .line 288
    .local v4, "skeleton":Ljava/lang/String;
    if-ne p1, v6, :cond_2

    .line 289
    const-string v4, "MM-dd"

    .line 293
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 291
    :cond_2
    const-string v4, "yyyy-MM-dd"

    goto :goto_1
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
    .line 199
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    .line 200
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->setContentView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->density:F

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->scaledDensity:F

    .line 203
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x102007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x102007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v1, 0x102007d

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/DateWheel;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    .line 206
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeDatePickerDialog;->dip2sp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setItemTextSize(I)V

    .line 207
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeDatePickerDialog;->dip2sp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterTextSize(I)V

    .line 208
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCyclic(Z)V

    .line 209
    const/16 v1, 0x76e

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->setMinYear(I)V

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040729

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1900"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->default_year:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "language":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060135

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    .line 222
    const v1, 0x102007c

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 223
    const v1, 0x102007a

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 225
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V

    goto :goto_0
.end method

.method private subtitleIsShown()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    .line 306
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    .line 307
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    .line 308
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 309
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 310
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public getDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDateWheel()Lcom/letv/leui/widget/picker/DateWheel;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    return-object v0
.end method

.method public isShowDate(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 193
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isShowTitle(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    if-nez p1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    if-nez v1, :cond_1

    .line 123
    iget v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    iget v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    iget v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/widget/LeDatePickerDialog;->getDateText(III)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "dateText":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v0    # "dateText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->default_year:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 131
    const-string v1, ""

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    iget v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    iget v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    iget v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;->onDateSet(III)V

    .line 243
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->dismiss()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;->onDateSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->dismiss()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x102007e
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
    .line 316
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string p2, ""

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->default_year:Ljava/lang/String;

    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    .line 322
    :goto_0
    iput-object p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->subtitleIsShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

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

    .line 329
    :goto_1
    return-void

    .line 320
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

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

    goto :goto_1
.end method

.method public onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V
    .locals 2
    .param p1, "view"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 266
    iput p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    .line 267
    iput p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    .line 268
    iput p4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    .line 269
    invoke-direct {p0, p2, p3, p4}, Lcom/letv/leui/widget/LeDatePickerDialog;->getDateText(III)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "dateText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->subtitleIsShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    .line 262
    return-void
.end method

.method public setMaxYear(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMaxYear(I)V

    .line 173
    return-void
.end method

.method public setMinYear(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMinYear(I)V

    .line 165
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 157
    return-void
.end method
