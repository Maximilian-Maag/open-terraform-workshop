# open-terraform-workshop

Dieses Repository enthält einen Workshop zum Thema Terraform. Er soll den Teilnehmerinnen und Teilnehmern Terraform näher bringen.

In der src directory befinden sich Folien für die drei Workshoptermin. Außerdem sind dort Challanges für die Teilnehmenden zu finden.

## Konzept
Für diesen Kurs wird zunächst ein Kickoff veranstaltet. Teilnehmende sollen an einem Testgerät Terraform ausprobieren. Ein einfaches Hello World genügt. Die Vorteile und die Funktionsweise von Terraform wird besprochen.

Im Anschluss folgt eine Selbstlernphase, bei die Teilnehmenden diverse Challenges absolvieren, um Problem mit Terraform zu lösen.

Nach der 1. Selbstlernphase folgt ein QA. Hier können Fragen zu den Challanges gestellt und Tipps und Tricks ausgetauscht werden.

Es folgt eine 2. Selbstlernphase, in der die Teilnehmenden Challanges erhalten, welche nicht mit Terraform alleine lösbar sind. Diese sollen die Grenzen von Terraform aufzeigen und das Potenzial im Zusammmenhang mit anderen Technologien hervorheben: Terraform, Ansible, Git wäre zum Beispiel eine Konstellation.

Nach dieser letzten Selbstlernphase erfolgt ein Abschlussworkshop. Hier sollen Ergebnisse zusammengetragen werden. Besonders gute Lösungen werden hervorgehoben. Ein Klassisches Setup im Enterprise Umfeld wird besprochen.

Es wird gezeigt wie Terraform mittels CD Pipeline Infrastrutktur nach einem PR deployen kann.

## Vorwissen und Material
Die Teilnehmenden benötigen keine Vorkenntnisse in Terraform. Es wird empfohlen sich mit Git und Linux vertraut zu machen.

Ein Computer je Teilnehmer ist erforderlich.
Der Kurs verwendet den Provider Linode als Beispiel. Es können auch andere IAC Provider verwendet werden.

Je Teilnehmer muss ein LINODE_TOKEN erstellt und in die Shell exportiert werden.

```
export LINODE_TOKEN="<YOUR_TOKEN>"
```