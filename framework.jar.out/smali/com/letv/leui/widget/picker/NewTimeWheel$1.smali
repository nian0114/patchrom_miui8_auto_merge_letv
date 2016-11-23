.class Lcom/letv/leui/widget/picker/NewTimeWheel$1;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "NewTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/NewTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/NewTimeWheel;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

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
    .line 121
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    # getter for: Lcom/letv/leui/widget/picker/NewTimeWheel;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->access$000(Lcom/letv/leui/widget/picker/NewTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/NewTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 122
    if-eq p3, p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/NewTimeWheel;->onUpdateTime()V

    .line 124
    :cond_0
    return-void
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    .line 127
    return-void
.end method
