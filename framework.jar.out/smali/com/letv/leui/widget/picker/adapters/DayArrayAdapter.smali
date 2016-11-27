.class public Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "DayArrayAdapter.java"


# instance fields
.field calendar:Ljava/util/Calendar;

.field curCalendar:Ljava/util/Calendar;

.field private dateFormat:Ljava/lang/String;

.field private daysCount:I

.field private isLunar:Z

.field private isZh:Z

.field private lunar:Lcom/letv/leui/pim/lunar/Lunar;

.field whellView:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/Calendar;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "isVertical"    # Z

    .prologue
    const/4 v2, 0x0

    .line 41
    const v1, 0x10900ef

    invoke-direct {p0, p1, v1, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 26
    iput-boolean v2, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isLunar:Z

    .line 42
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->calendar:Ljava/util/Calendar;

    .line 43
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->curCalendar:Ljava/util/Calendar;

    .line 44
    invoke-super {p0, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 45
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 46
    .local v0, "year":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->setYear(I)V

    .line 47
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    const v1, 0x1040636

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v1, "MM dd"

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isZh(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isZh:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isZh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 56
    :cond_2
    return-void
.end method

.method private isZh(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 61
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "country":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    .line 83
    .local v4, "newCalendar":Ljava/util/Calendar;
    const/4 v8, 0x6

    invoke-virtual {v4, v8, p1}, Ljava/util/Calendar;->add(II)V

    .line 84
    const-string v0, ""

    .line 85
    .local v0, "date":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isLunar:Z

    if-eqz v8, :cond_4

    .line 86
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8, v4}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    .line 89
    const-string v6, ""

    .local v6, "week":Ljava/lang/String;
    move-object v1, v6

    .local v1, "day":Ljava/lang/String;
    move-object v3, v6

    .local v3, "month":Ljava/lang/String;
    move-object v7, v6

    .line 90
    .local v7, "year":Ljava/lang/String;
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    const-string v9, "y"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 91
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getYear()Ljava/lang/String;

    move-result-object v7

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    .line 95
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getMonth()Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 99
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getDay()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    const-string v9, "E"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    .line 103
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "format":Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "w":Ljava/lang/String;
    move-object v6, v5

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .end local v1    # "day":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "month":Ljava/lang/String;
    .end local v5    # "w":Ljava/lang/String;
    .end local v6    # "week":Ljava/lang/String;
    .end local v7    # "year":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0

    .line 111
    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isZh:Z

    if-eqz v8, :cond_5

    .line 112
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v2    # "format":Ljava/text/DateFormat;
    :goto_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_1
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->daysCount:I

    return v0
.end method

.method public getWhellView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "formate"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->dateFormat:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIsLunar(Z)V
    .locals 1
    .param p1, "isluanr"    # Z

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isLunar:Z

    if-ne v0, p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->isLunar:Z

    goto :goto_0
.end method

.method public setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "whellView"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    .line 141
    return-void
.end method

.method public setYear(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 129
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_0

    .line 130
    const/16 v0, 0x16e

    iput v0, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->daysCount:I

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    const/16 v0, 0x16d

    iput v0, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->daysCount:I

    goto :goto_0
.end method
