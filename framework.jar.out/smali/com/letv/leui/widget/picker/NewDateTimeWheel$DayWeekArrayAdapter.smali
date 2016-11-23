.class public Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "NewDateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/NewDateTimeWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayWeekArrayAdapter"
.end annotation


# instance fields
.field private daysCount:I

.field private lunar:Lcom/letv/leui/pim/lunar/Lunar;

.field final synthetic this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;-><init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Landroid/content/Context;Z)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Landroid/content/Context;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isVertical"    # Z

    .prologue
    .line 193
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    .line 194
    const v1, 0x10900f2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 195
    invoke-super {p0, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 196
    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$100(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 197
    .local v0, "year":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->setYear(I)V

    .line 199
    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh:Z
    invoke-static {p1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$200(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 218
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$100(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    .line 219
    .local v4, "newCalendar":Ljava/util/Calendar;
    const/4 v8, 0x6

    invoke-virtual {v4, v8, p1}, Ljava/util/Calendar;->add(II)V

    .line 221
    if-nez p1, :cond_1

    .line 222
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->today:Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$300(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :cond_1
    const-string v0, ""

    .line 225
    .local v0, "date":Ljava/lang/String;
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isLunar:Z
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$400(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 226
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8, v4}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    .line 228
    const-string v6, ""

    .local v6, "week":Ljava/lang/String;
    move-object v1, v6

    .local v1, "day":Ljava/lang/String;
    move-object v3, v6

    .local v3, "month":Ljava/lang/String;
    move-object v7, v6

    .line 230
    .local v7, "year":Ljava/lang/String;
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$500(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 231
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getMonth()Ljava/lang/String;

    move-result-object v3

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$500(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_3

    .line 235
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getDay()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$500(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "E"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 239
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "format":Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "w":Ljava/lang/String;
    move-object v6, v5

    .line 242
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 247
    .end local v1    # "day":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "month":Ljava/lang/String;
    .end local v5    # "w":Ljava/lang/String;
    .end local v6    # "week":Ljava/lang/String;
    .end local v7    # "year":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->isZh:Z
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$200(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 248
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$500(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2    # "format":Ljava/text/DateFormat;
    :goto_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_1
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->daysCount:I

    return v0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formate"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # setter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->dateFormat:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$502(Lcom/letv/leui/widget/picker/NewDateTimeWheel;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    const/4 v1, 0x6

    .line 263
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$100(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x16f

    iput v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->daysCount:I

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$100(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x16e

    iput v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$DayWeekArrayAdapter;->daysCount:I

    goto :goto_0
.end method
