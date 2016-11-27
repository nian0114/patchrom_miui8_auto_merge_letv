.class Lcom/letv/leui/widget/AlphabetWavesView$2;
.super Ljava/lang/Object;
.source "AlphabetWavesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AlphabetWavesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/AlphabetWavesView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/AlphabetWavesView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView$2;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView$2;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    # invokes: Lcom/letv/leui/widget/AlphabetWavesView;->transitionToHidden()V
    invoke-static {v0}, Lcom/letv/leui/widget/AlphabetWavesView;->access$200(Lcom/letv/leui/widget/AlphabetWavesView;)V

    return-void
.end method
