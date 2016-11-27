.class Lcom/letv/leui/widget/picker/DateTimeWheel$1;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

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
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$002(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$000(Lcom/letv/leui/widget/picker/DateTimeWheel;)I

    move-result v1

    add-int/lit16 v1, v1, 0x7b2

    # setter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$102(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$200(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I
    invoke-static {v2}, Lcom/letv/leui/widget/picker/DateTimeWheel;->access$100(Lcom/letv/leui/widget/picker/DateTimeWheel;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    if-eq p2, p3, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    :cond_0
    return-void
.end method
