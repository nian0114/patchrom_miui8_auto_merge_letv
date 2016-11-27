.class Lcom/letv/leui/widget/picker/NewDateTimeWheel$1;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "NewDateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/NewDateTimeWheel;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 1
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/NewDateTimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/NewDateTimeWheel;

    # invokes: Lcom/letv/leui/widget/picker/NewDateTimeWheel;->changeDate()V
    invoke-static {v0}, Lcom/letv/leui/widget/picker/NewDateTimeWheel;->access$000(Lcom/letv/leui/widget/picker/NewDateTimeWheel;)V

    return-void
.end method
