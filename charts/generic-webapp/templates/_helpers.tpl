{{- define "generic-webapp.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
