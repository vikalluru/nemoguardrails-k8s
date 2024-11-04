{{/*
Generate a simple name.
*/}}
{{- define "nemoguardrails.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Generate a fullname using the release name and chart name.
*/}}
{{- define "nemoguardrails.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for resources.
*/}}
{{- define "nemoguardrails.labels" -}}
app.kubernetes.io/name: {{ include "nemoguardrails.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}