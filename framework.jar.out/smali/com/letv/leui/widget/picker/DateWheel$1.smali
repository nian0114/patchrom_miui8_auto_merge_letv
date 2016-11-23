.class Lcom/letv/leui/widget/picker/DateWheel$1;
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
    .line 252
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 11
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 254
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v8

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$002(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 255
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v8, v9

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curYear:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$102(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 256
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v6, v7, v8

    .line 257
    .local v6, "year":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 258
    .local v3, "month":I
    sget v7, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v6, v7, :cond_0

    .line 259
    const/16 v6, 0x76c

    .line 261
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$300(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 262
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 263
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initYear:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$500(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 264
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$700(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    const/16 v7, 0xc

    if-ge v1, v7, :cond_2

    .line 267
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    .restart local v1    # "i":I
    :goto_1
    const/16 v7, 0xc

    if-ge v1, v7, :cond_2

    .line 270
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    if-ge v7, v9, :cond_5

    const/4 v7, 0x0

    :goto_2
    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v8, v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$202(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 272
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    if-ge v7, v9, :cond_6

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    :goto_3
    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v8, v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1002(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 273
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1102(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 274
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 275
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 277
    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 278
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 280
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 281
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->modifyInitDayView(II)V
    invoke-static {v7, v6, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1500(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 282
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 283
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 284
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 285
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 287
    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2000(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 288
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 305
    .end local v1    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1102(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 306
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 307
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 370
    :goto_5
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v7}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 371
    return-void

    .line 271
    .restart local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    sub-int/2addr v7, v9

    goto/16 :goto_2

    .line 272
    :cond_6
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    goto/16 :goto_3

    .line 290
    .end local v1    # "i":I
    :cond_7
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_8

    .line 291
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$2100(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 293
    :cond_8
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$202(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 294
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 295
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V
    invoke-static {v7, v6, v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2200(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 296
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 297
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eqz v7, :cond_9

    .line 298
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 300
    :cond_9
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 301
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 302
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 303
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto/16 :goto_4

    .line 309
    :cond_a
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V
    invoke-static {v7, v6, v3}, Lcom/letv/leui/widget/picker/DateWheel;->access$2200(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 310
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 311
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eqz v7, :cond_b

    .line 312
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 314
    :cond_b
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 315
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 320
    :cond_c
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v2

    .line 321
    .local v2, "leapMonth":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eq v7, v2, :cond_e

    .line 322
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7, v2}, Lcom/letv/leui/widget/picker/DateWheel;->access$2402(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 323
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-lez v7, :cond_d

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    const/16 v8, 0xc

    if-le v7, v8, :cond_14

    .line 324
    :cond_d
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_e

    .line 325
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$2100(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 338
    :cond_e
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1102(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 339
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eqz v7, :cond_f

    .line 340
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 342
    :cond_f
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1400(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1100(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "days_num":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-lez v7, :cond_10

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    const/16 v8, 0xc

    if-gt v7, v8, :cond_10

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-eq v7, v8, :cond_17

    .line 348
    :cond_10
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 353
    :cond_11
    :goto_6
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v0, :cond_12

    .line 354
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_18

    .line 355
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 356
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v7, v8, :cond_12

    .line 357
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1902(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 363
    :cond_12
    :goto_7
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$1200(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1602(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 364
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eqz v7, :cond_13

    .line 365
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->itemHeiht:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1300(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->setTextViewHeight(I)V

    .line 367
    :cond_13
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1600(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 368
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1800(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 327
    .end local v0    # "days_num":I
    :cond_14
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 328
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 329
    :cond_15
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2500(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10405e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "run":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-ge v1, v7, :cond_16

    .line 332
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 333
    :cond_16
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    :goto_9
    const/16 v7, 0xc

    if-ge v1, v7, :cond_e

    .line 335
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$600(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$900(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 349
    .end local v1    # "i":I
    .end local v4    # "run":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "days_num":I
    :cond_17
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$200(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$2400(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-ne v7, v8, :cond_11

    .line 350
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$2300(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_6

    .line 359
    :cond_18
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v0, :cond_12

    .line 360
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->access$1700(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->access$2500(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10405e9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method
