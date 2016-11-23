.class Lcom/letv/leui/widget/picker/DateWheel$2;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateWheel;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateWheel;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 7
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 377
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v4

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$202(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 378
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1002(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 380
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    sget v4, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v2, v3, v4

    .line 381
    .local v2, "year":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 382
    .local v1, "i":I
    sget v3, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v2, v3, :cond_0

    .line 383
    const/16 v2, 0x76c

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$300(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 386
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initYear:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$500(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 388
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v5

    add-int/2addr v4, v5

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1002(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initYear:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$500(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-eq v1, v3, :cond_4

    .line 392
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V
    invoke-static {v3, v2, v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$2200(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 393
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 399
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 403
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 432
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 433
    return-void

    .line 395
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    add-int/lit8 v4, v1, -0x1

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->modifyInitDayView(II)V
    invoke-static {v3, v2, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1500(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 396
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_0

    .line 406
    :cond_5
    const/4 v0, 0x0

    .line 407
    .local v0, "days_num":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_a

    .line 408
    :cond_6
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 417
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v0, :cond_8

    .line 418
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_d

    .line 419
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 420
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_8

    .line 421
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1902(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 425
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 426
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 427
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 429
    :cond_9
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 430
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 410
    :cond_a
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 411
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_2

    .line 412
    :cond_b
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 413
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto/16 :goto_2

    .line 414
    :cond_c
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-le v3, v4, :cond_7

    .line 415
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto/16 :goto_2

    .line 422
    :cond_d
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_8

    .line 423
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->access$2500(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method
