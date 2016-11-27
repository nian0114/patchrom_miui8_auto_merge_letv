.class Lcom/letv/leui/widget/picker/DateWheel$3;
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
    .line 424
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 3
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$1902(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 428
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z
    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->access$400(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curYear:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->access$100(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initYear:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$500(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->access$1000(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$800(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->initDay:I
    invoke-static {v2}, Lcom/letv/leui/widget/picker/DateWheel;->access$2700(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v2

    add-int/2addr v1, v2

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curDay:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$2602(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 437
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curDay:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$2602(Lcom/letv/leui/widget/picker/DateWheel;I)I

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$1900(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/letv/leui/widget/picker/DateWheel;->curDay:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->access$2602(Lcom/letv/leui/widget/picker/DateWheel;I)I

    goto :goto_0
.end method
