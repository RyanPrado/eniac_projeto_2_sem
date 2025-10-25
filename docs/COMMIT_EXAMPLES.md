# Exemplos de Commit Messages para Semantic Release

Este arquivo contém exemplos de mensagens de commit seguindo o padrão Conventional Commits.

## Formato Básico

```
<tipo>(<escopo opcional>): <descrição>

[corpo opcional]

[rodapé opcional]
```

## Tipos de Commit

### `feat` - Nova Funcionalidade (Minor Release: 1.0.0 → 1.1.0)

```bash
feat: adiciona formulário de contato
feat(auth): implementa login com Google
feat(ui): adiciona modo escuro
```

### `fix` - Correção de Bug (Patch Release: 1.0.0 → 1.0.1)

```bash
fix: corrige validação de email
fix(form): resolve problema de envio duplicado
fix(css): ajusta responsividade em mobile
```

### `docs` - Documentação (Não gera release)

```bash
docs: atualiza README com instruções de instalação
docs(api): adiciona documentação dos endpoints
```

### `style` - Formatação (Não gera release)

```bash
style: ajusta indentação do código
style(css): reorganiza propriedades CSS
```

### `refactor` - Refatoração (Não gera release)

```bash
refactor: simplifica lógica de validação
refactor(auth): extrai função de autenticação
```

### `test` - Testes (Não gera release)

```bash
test: adiciona testes para formulário
test(api): adiciona testes de integração
```

### `chore` - Manutenção (Não gera release)

```bash
chore: atualiza dependências
chore(deps): atualiza versão do React
chore: configura ESLint
```

### `perf` - Performance (Patch Release)

```bash
perf: otimiza carregamento de imagens
perf(db): adiciona índices para consultas
```

## Breaking Changes (Major Release: 1.0.0 → 2.0.0)

Para indicar uma mudança que quebra compatibilidade, use `BREAKING CHANGE:` no rodapé ou `!` após o tipo:

```bash
feat!: remove suporte para IE11

BREAKING CHANGE: Internet Explorer 11 não é mais suportado
```

```bash
refactor(api)!: muda estrutura de resposta da API

BREAKING CHANGE: A resposta da API agora retorna um objeto em vez de array
```

## Commits com Escopo

```bash
feat(header): adiciona menu de navegação
fix(footer): corrige links de redes sociais
docs(readme): adiciona badges de CI/CD
```

## Commits com Corpo e Rodapé

```bash
feat: implementa sistema de cache

Adiciona sistema de cache usando Redis para melhorar
performance das consultas mais frequentes.

Closes #123
```

```bash
fix: resolve vazamento de memória

O problema ocorria quando múltiplas requisições eram
feitas simultaneamente.

Fixes #456
Related to #457
```

## Múltiplas Linhas

```bash
feat: implementa dashboard de administração

- Adiciona gráficos de estatísticas
- Implementa tabela de usuários
- Adiciona filtros e busca
- Implementa exportação de dados

Closes #789
```

## Commits de Release (Gerados Automaticamente)

O semantic-release gera automaticamente commits como:

```
chore(release): 1.2.0 [skip ci]

## [1.2.0](link) (2025-10-25)

### Features

* adiciona formulário de contato ([commit-hash](link))
* implementa modo escuro ([commit-hash](link))

### Bug Fixes

* corrige validação de email ([commit-hash](link))
```

## Dicas

1. **Use verbos no imperativo**: "adiciona" em vez de "adicionado" ou "adicionando"
2. **Primeira letra minúscula**: `feat: adiciona` em vez de `feat: Adiciona`
3. **Sem ponto final**: `feat: adiciona feature` em vez de `feat: adiciona feature.`
4. **Seja conciso**: A primeira linha deve ter no máximo 72 caracteres
5. **Use o corpo para detalhes**: Se precisar explicar mais, use o corpo do commit
6. **Referencie issues**: Use `Closes #123` ou `Fixes #456` no rodapé

## Versionamento Semântico

- **Major** (1.0.0 → 2.0.0): BREAKING CHANGES
- **Minor** (1.0.0 → 1.1.0): `feat:` commits
- **Patch** (1.0.0 → 1.0.1): `fix:` commits

## Ferramentas Úteis

### Commitizen (Opcional)

Para facilitar a criação de commits:

```bash
npm install -g commitizen
npm install -g cz-conventional-changelog
```

Depois use:

```bash
git cz
```

### Commitlint (Opcional)

Para validar mensagens de commit:

```bash
npm install --save-dev @commitlint/cli @commitlint/config-conventional
```

## Exemplos Práticos do Projeto

```bash
# Adicionar nova página
git commit -m "feat: adiciona página de serviços"

# Corrigir bug no formulário
git commit -m "fix(contact): corrige envio de formulário de contato"

# Atualizar documentação
git commit -m "docs: adiciona guia de contribuição"

# Melhorar performance
git commit -m "perf: otimiza carregamento de imagens"

# Refatorar componente
git commit -m "refactor(header): simplifica estrutura do menu"

# Atualizar dependências
git commit -m "chore(deps): atualiza dependências do projeto"

# Adicionar testes
git commit -m "test(form): adiciona testes para validação"

# Breaking change
git commit -m "feat(api)!: muda estrutura de dados do contato

BREAKING CHANGE: O campo 'phone' agora é obrigatório"
```

## Recursos

- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)
- [Semantic Release](https://semantic-release.gitbook.io/)
